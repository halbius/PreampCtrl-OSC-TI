/*================================================================================================*/
/*
 *	Copyright 2008-2015, 2019, 2023-2024 Avid Technology, Inc.
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

/**
 *	\file   PreampCtrl_Alg.h
 *	\brief  Algorithm component definitions for PreampCtrl-OSC.
 */
/*================================================================================================*/

#pragma once
#ifndef PreampCtrl_ALG_H
#define PreampCtrl_ALG_H

#include "AAX.h"

//==============================================================================
// General definitions
//==============================================================================

enum EPreampCtrl_MeterTaps
{
	eMeterTap_PreGain = 0,
	eMeterTap_PostGain,
	eMeterTap_Count
};

//==============================================================================
// Memory block structure definitions
//==============================================================================

#include AAX_ALIGN_FILE_BEGIN
#include AAX_ALIGN_FILE_ALG
#include AAX_ALIGN_FILE_END

struct SPreampCtrl_CoefsGain
{
	float   mGain;        // nur OSC, beeinflusst Audio NICHT
	int32_t mIsStereo;    // 1 = Stereo, 0 = Mono

	// Audiobearbeitung – Signalkette:
	// [PhaseAudio/PhaseM/PhaseS] → [SwapLR] → [MSDecode] → [Mono]

	int32_t mPhaseAudio;  // 1 = Phasendrehung 180° (Mono: Kanal 1; Stereo: beide Kanäle)
	int32_t mPhaseM;      // 1 = Kanal 1 (M) invertieren, nur Stereo, vor M/S
	int32_t mPhaseS;      // 1 = Kanal 2 (S) invertieren, nur Stereo, vor M/S
	int32_t mSwapLR;      // 1 = L und R tauschen, nur Stereo
	int32_t mMSDecode;    // 1 = M/S-Decoder aktiv, nur Stereo
	int32_t mMono;        // 1 = Monoschaltung (L+R)/2, nur Stereo
};

#include AAX_ALIGN_FILE_BEGIN
#include AAX_ALIGN_FILE_RESET
#include AAX_ALIGN_FILE_END

//==============================================================================
// Component context definitions
//==============================================================================

struct SPreampCtrl_Alg_Context
{
	int32_t                 * mCtrlBypassP;
	SPreampCtrl_CoefsGain   * mCoefsGainP;
	float*                  * mInputPP;
	float*                  * mOutputPP;
	int32_t                 * mBufferSize;
	float*                  * mMetersPP;
};

enum EPreampCtrl_Alg_PortID
{
	 eAlgPortID_BypassIn       = AAX_FIELD_INDEX (SPreampCtrl_Alg_Context, mCtrlBypassP)
	,eAlgPortID_CoefsGainIn    = AAX_FIELD_INDEX (SPreampCtrl_Alg_Context, mCoefsGainP)
	,eAlgFieldID_AudioIn       = AAX_FIELD_INDEX (SPreampCtrl_Alg_Context, mInputPP)
	,eAlgFieldID_AudioOut      = AAX_FIELD_INDEX (SPreampCtrl_Alg_Context, mOutputPP)
	,eAlgFieldID_BufferSize    = AAX_FIELD_INDEX (SPreampCtrl_Alg_Context, mBufferSize)
	,eAlgFieldID_Meters        = AAX_FIELD_INDEX (SPreampCtrl_Alg_Context, mMetersPP)
};

//==============================================================================
// Callback declarations
//==============================================================================

void
AAX_CALLBACK
PreampCtrl_AlgorithmProcessFunction (
    SPreampCtrl_Alg_Context * const inInstancesBegin [],
    const void *                    inInstancesEnd);

#endif // PreampCtrl_ALG_H
