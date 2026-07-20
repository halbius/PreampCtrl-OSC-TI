/*================================================================================================*/
/*
 *    Copyright 2009-2015, 2018, 2023-2024 Avid Technology, Inc.
 *    All rights reserved.
 *
 *    This file is part of the Avid AAX SDK.
 *    The AAX SDK is subject to commercial or open-source licensing.
 *    AAX SDK License: https://developer.avid.com/aax
 *
 *    THE AAX SDK IS PROVIDED "AS IS" WITHOUT ANY WARRANTY, AND ALL WARRANTIES, WHETHER
 *    EXPRESSED OR IMPLIED, INCLUDING MERCHANTABILITY AND FITNESS FOR PURPOSE, ARE
 *    DISCLAIMED.
 */
/*================================================================================================*/
//lkjdsfösdkjfö
#pragma once
#ifndef PreampCtrl_DEFS_H
#define PreampCtrl_DEFS_H

#include "AAX.h"

// Effect ID
const AAX_CEffectID kEffectID_PreampCtrl = "com.preampctrl.aax.preampctrl-osc";

// Type, product, and relation IDs
const AAX_CTypeID cPreampCtrl_ManufactureID         = 'PrCA';
const AAX_CTypeID cPreampCtrl_ProductID             = 'PrCB';
const AAX_CTypeID cPreampCtrl_PlugInID_Native       = 'PCDR';
const AAX_CTypeID cPreampCtrl_PlugInID_AudioSuite   = 'PCDA';
const AAX_CTypeID cPreampCtrl_PlugInID_TI           = 'PCDT';

const AAX_CTypeID cPreampCtrl_MeterID[2] = { 'PcIn','Pc0t' };

// Stereo Plugin IDs
const AAX_CTypeID cPreampCtrl_PlugInID_Native_Stereo = 'PCDS';
const AAX_CTypeID cPreampCtrl_PlugInID_TI_Stereo     = 'PCTS';

// Parameter IDs – OSC-Steuerung (senden Steuersignale an das Gerät)
#define PreampCtrl_GainID        "Gain"
#define PreampCtrl_ChannelID     "Channel"
#define PreampCtrl_DeviceIPID    "DeviceIP"
#define PreampCtrl_PhantomID     "Phantom"
#define PreampCtrl_GeneratorID   "Generator"
#define PreampCtrl_HPFID         "HPF"
#define PreampCtrl_LimiterID     "Limiter"
#define PreampCtrl_PhaseLID      "PhaseL"       // Mono: "Phase L/R", Stereo: "Phase L"
#define PreampCtrl_PhaseRID      "PhaseR"       // nur Stereo: "Phase R"
#define PreampCtrl_DeviceID      "Device"
#define PreampCtrl_DeviceInfoID  "DeviceInfo"

// Parameter IDs – Audiobearbeitung (beeinflussen das Audiosignal, kein OSC)
#define PreampCtrl_MSDecodeID    "MSDecode"     // M/S-Decoder (nur Stereo)
#define PreampCtrl_SwapLRID      "SwapLR"       // Kanaltausch L↔R (nur Stereo)
#define PreampCtrl_MonoID        "MonoSum"         // Monoschaltung L+R summiert (nur Stereo)

// OSC Settings
#define PreampCtrl_OSC_IP            "192.168.1.31"
#define PreampCtrl_OSC_PORT          9999
#define PreampCtrl_OSC_RECEIVE_PORT  9998

// OSC-Adressschema: /CON/TXCH<channel>/<Param>
// Die folgenden Defines enthalten nur den Parameternamen (Suffix).
// BuildAddress() setzt das Präfix /CON/TXCH<ch>/ davor.
#define PreampCtrl_OSC_Gain      "Gain"
#define PreampCtrl_OSC_Phantom   "Phantom"
#define PreampCtrl_OSC_Generator "Generator"
#define PreampCtrl_OSC_HPF       "HPF"
#define PreampCtrl_OSC_Limiter   "Limiter"
#define PreampCtrl_OSC_Polarity  "Polarity"  // Plugin-GUI: "Phase", OSC: "Polarity"

// HPF-Bereich (0–400 Hz, 5-Hz-Schritte)
constexpr int32_t kPreampCtrl_HPFMin     =   0;   // Hz (0 = off)
constexpr int32_t kPreampCtrl_HPFMax     = 400;   // Hz
constexpr int32_t kPreampCtrl_HPFStep    =   5;   // Hz pro Stufe
constexpr int32_t kPreampCtrl_HPFSteps   =  81;   // Anzahl Stufen (0,5,10,...,400)

// Gain-Bereich in dB (Stagetec: Int, -20 bis +70, 1-dB-Schritte)
constexpr float kPreampCtrl_GainMin     = -20.0f;
constexpr float kPreampCtrl_GainMax     =  70.0f;
constexpr float kPreampCtrl_GainDefault =  15.0f;
constexpr int32_t kPreampCtrl_GainSteps =  91;    // (-20, -19, ..., +70)

// OSC Wertebereich
#define PreampCtrl_OSC_NORMALIZED  false

#endif // PreampCtrl_DEFS_H
