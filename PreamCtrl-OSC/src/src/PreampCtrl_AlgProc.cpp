/*================================================================================================*/
/*
 *	Copyright 2008-2015, 2023-2024 Avid Technology, Inc.
 *	All rights reserved.
 *
 *	This file is part of the Avid AAX SDK.
 *	The AAX SDK is subject to commercial or open-source licensing.
 *	AAX SDK License: https://developer.avid.com/aax
 *
 *	THE AAX SDK IS PROVIDED "AS IS" WITHOUT ANY WARRANTY, AND ALL WARRANTIES, WHETHER
 *	EXPRESSED OR IMPLIED, INCLUDING MERCHANTABILITY AND FITNESS FOR PURPOSE, ARE
 *	DISCLAIMED.
 */
/*================================================================================================*/

#include "PreampCtrl_Alg.h"
#include "AAX.h"
#include <math.h>
#include <algorithm>

//==============================================================================
// Processing function
//
// Gain wird NUR per OSC gesendet – er beeinflusst das Audiosignal NICHT.
//
// Signalkette:
//   Mono:   [PhaseAudio] → Ausgang
//   Stereo: [PhaseM] → [PhaseS] → [MSDecode] → [SwapLR] → [Mono] → Ausgang
//==============================================================================

void
AAX_CALLBACK
PreampCtrl_AlgorithmProcessFunction(
    SPreampCtrl_Alg_Context* const   inInstancesBegin[],
    const void*                      inInstancesEnd)
{
    for (SPreampCtrl_Alg_Context* const* walk = inInstancesBegin; walk < inInstancesEnd; ++walk)
    {
        SPreampCtrl_Alg_Context* AAX_RESTRICT instance = *walk;

        const SPreampCtrl_CoefsGain* const AAX_RESTRICT coefs = instance->mCoefsGainP;
        const int32_t   bypass      = *instance->mCtrlBypassP;
        const int32_t   phaseAudio  = coefs->mPhaseAudio;
        const int32_t   phaseM      = coefs->mPhaseM;
        const int32_t   phaseS      = coefs->mPhaseS;
        const int32_t   msDecode    = coefs->mMSDecode;
        const int32_t   swapLR      = coefs->mSwapLR;
        const int32_t   mono        = coefs->mMono;
        const int32_t   buffersize  = *instance->mBufferSize;

        const bool isStereo = (instance->mInputPP[1] != nullptr);

        const float* const AAX_RESTRICT pdI0 = instance->mInputPP[0];
        float* const AAX_RESTRICT       pdO0 = instance->mOutputPP[0];

        if (bypass)
        {
            // Bypass: Signal 1:1 durchlassen
            for (int t = 0; t < buffersize; t++)
                pdO0[t] = pdI0[t];

            if (isStereo)
            {
                const float* const AAX_RESTRICT pdI1 = instance->mInputPP[1];
                float* const AAX_RESTRICT       pdO1 = instance->mOutputPP[1];
                for (int t = 0; t < buffersize; t++)
                    pdO1[t] = pdI1[t];
            }
        }
        else if (!isStereo)
        {
            // ----------------------------------------------------------------
            // Mono-Verarbeitung: nur PhaseAudio
            // ----------------------------------------------------------------
            const float phase = phaseAudio ? -1.0f : 1.0f;
            for (int t = 0; t < buffersize; t++)
                pdO0[t] = phase * pdI0[t];
        }
        else
        {
            // ----------------------------------------------------------------
            // Stereo-Verarbeitung
            // Signalkette: [PhaseM] → [PhaseS] → [MSDecode] → [SwapLR] → [Mono]
            // ----------------------------------------------------------------
            const float* const AAX_RESTRICT pdI1 = instance->mInputPP[1];
            float* const AAX_RESTRICT       pdO1 = instance->mOutputPP[1];

            // Schritt 1+2: Phase M und Phase S
            const float pm = phaseM ? -1.0f : 1.0f;
            const float ps = phaseS ? -1.0f : 1.0f;

            // Schritt 3: M/S-Dekodierung oder Durchlauf
            // float ch0, ch1;  // Zwischenergebnis nach Phase + M/S

            // (wird sample-weise in den Schleifen berechnet)

            if (msDecode)
            {
                // M/S → L/R: L = 0.5*(pm*M + ps*S), R = 0.5*(pm*M - ps*S)
                if (swapLR)
                {
                    if (mono)
                    {
                        // Mono nach Swap nach M/S:
                        // Swap: L→R, R→L → dann Mono
                        // Mono = 0.5*(R+L) = 0.5*(pm*M) (S fällt heraus)
                        for (int t = 0; t < buffersize; t++)
                        {
                            const float val = 0.5f * pm * pdI0[t];
                            pdO0[t] = val;
                            pdO1[t] = val;
                        }
                    }
                    else
                    {
                        // M/S → Swap: R=0.5*(pm*M+ps*S), L=0.5*(pm*M-ps*S)
                        for (int t = 0; t < buffersize; t++)
                        {
                            const float m = pm * pdI0[t];
                            const float s = ps * pdI1[t];
                            pdO0[t] = 0.5f * (m - s); // war R, jetzt L nach Swap
                            pdO1[t] = 0.5f * (m + s); // war L, jetzt R nach Swap
                        }
                    }
                }
                else
                {
                    if (mono)
                    {
                        // Mono nach M/S (kein Swap):
                        // Mono = 0.5*(L+R) = 0.5*(pm*M)
                        for (int t = 0; t < buffersize; t++)
                        {
                            const float val = 0.5f * pm * pdI0[t];
                            pdO0[t] = val;
                            pdO1[t] = val;
                        }
                    }
                    else
                    {
                        // M/S, kein Swap, kein Mono
                        for (int t = 0; t < buffersize; t++)
                        {
                            const float m = pm * pdI0[t];
                            const float s = ps * pdI1[t];
                            pdO0[t] = 0.5f * (m + s);
                            pdO1[t] = 0.5f * (m - s);
                        }
                    }
                }
            }
            else
            {
                // Kein M/S-Decoder
                if (swapLR)
                {
                    if (mono)
                    {
                        // Mono nach Swap: Mono = 0.5*(ps*S + pm*M)
                        for (int t = 0; t < buffersize; t++)
                        {
                            const float val = 0.5f * (ps * pdI1[t] + pm * pdI0[t]);
                            pdO0[t] = val;
                            pdO1[t] = val;
                        }
                    }
                    else
                    {
                        // Nur Swap + Phase
                        for (int t = 0; t < buffersize; t++)
                        {
                            pdO0[t] = ps * pdI1[t]; // S → Kanal 0
                            pdO1[t] = pm * pdI0[t]; // M → Kanal 1
                        }
                    }
                }
                else
                {
                    if (mono)
                    {
                        // Nur Mono + Phase
                        for (int t = 0; t < buffersize; t++)
                        {
                            const float val = 0.5f * (pm * pdI0[t] + ps * pdI1[t]);
                            pdO0[t] = val;
                            pdO1[t] = val;
                        }
                    }
                    else
                    {
                        // Nur Phase
                        for (int t = 0; t < buffersize; t++)
                        {
                            pdO0[t] = pm * pdI0[t];
                            pdO1[t] = ps * pdI1[t];
                        }
                    }
                }
            }
        }

        // Metering
        float* const AAX_RESTRICT meterTaps = *instance->mMetersPP;
        for (int t = 0; t < buffersize; t++)
        {
            meterTaps[eMeterTap_PreGain]  = std::max(fabsf(pdI0[t]), meterTaps[eMeterTap_PreGain]);
            meterTaps[eMeterTap_PostGain] = std::max(fabsf(pdO0[t]), meterTaps[eMeterTap_PostGain]);
        }
    }
}
