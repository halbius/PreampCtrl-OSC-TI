/*================================================================================================*/
/*
 *	Copyright 2013-2017, 2023-2025 Avid Technology, Inc.
 *	All rights reserved.
 *	
 *	This file is part of the Avid AAX SDK.
 *	
 *	The AAX SDK is subject to commercial or open-source licensing.
 *	
 *	By using the AAX SDK, you agree to the terms of both the Avid AAX SDK License
 *	Agreement and Avid Privacy Policy.
 *	
 *	AAX SDK License: https://developer.avid.com/aax
 *	Privacy Policy: https://www.avid.com/legal/privacy-policy-statement
 *	
 *	Or: You may also use this code under the terms of the GPL v3 (see
 *	www.gnu.org/licenses).
 *	
 *	THE AAX SDK IS PROVIDED "AS IS" WITHOUT ANY WARRANTY, AND ALL WARRANTIES, WHETHER
 *	EXPRESSED OR IMPLIED, INCLUDING MERCHANTABILITY AND FITNESS FOR PURPOSE, ARE
 *	DISCLAIMED.
 */
/*================================================================================================*/

// PreampCtrl-OSC Includes
#include "PreampCtrl_Describe.h"
#include "PreampCtrl_Defs.h"
#include "PreampCtrl_Alg.h"
#include "PreampCtrl_Parameters.h"

// AAX Includes
#include "AAX_ICollection.h"
#include "AAX_IComponentDescriptor.h"
#include "AAX_IEffectDescriptor.h"
#include "AAX_IPropertyMap.h"
#include "AAX_Exception.h"
#include "AAX_Errors.h"
#include "AAX_Assert.h"


// ***************************************************************************
// ROUTINE:	DescribeAlgorithmComponent
// Algorithm component description
// ***************************************************************************
static void DescribeAlgorithmComponent(AAX_IComponentDescriptor* outDesc,
	AAX_EStemFormat stemFormat)
{
	AAX_CheckedResult err;

	err = outDesc->AddAudioIn(eAlgFieldID_AudioIn);
	err = outDesc->AddAudioOut(eAlgFieldID_AudioOut);
	err = outDesc->AddAudioBufferLength(eAlgFieldID_BufferSize);
	static_assert(eMeterTap_Count == sizeof(cPreampCtrl_MeterID) / sizeof(AAX_CTypeID), "unexpected meter tap array size");
	err = outDesc->AddMeters(eAlgFieldID_Meters, cPreampCtrl_MeterID, eMeterTap_Count);

	err = outDesc->AddDataInPort(eAlgPortID_BypassIn, sizeof(int32_t));
	err = outDesc->AddDataInPort(eAlgPortID_CoefsGainIn, sizeof(SPreampCtrl_CoefsGain));

	AAX_IPropertyMap* const properties = outDesc->NewPropertyMap();
	if (!properties)
		err = AAX_ERROR_NULL_OBJECT;

	err = properties->AddProperty(AAX_eProperty_ManufacturerID, cPreampCtrl_ManufactureID);
	err = properties->AddProperty(AAX_eProperty_ProductID, cPreampCtrl_ProductID);
	err = properties->AddProperty(AAX_eProperty_CanBypass, true);
	err = properties->AddProperty(AAX_eProperty_UsesClientGUI, true);

	// Stem format — Mono oder Stereo
	err = properties->AddProperty(AAX_eProperty_InputStemFormat, stemFormat);
	err = properties->AddProperty(AAX_eProperty_OutputStemFormat, stemFormat);

	// IDs abhängig vom Stem Format
	if (stemFormat == AAX_eStemFormat_Mono)
	{
		err = properties->AddProperty(AAX_eProperty_PlugInID_Native, cPreampCtrl_PlugInID_Native);
		err = properties->AddProperty(AAX_eProperty_PlugInID_AudioSuite, cPreampCtrl_PlugInID_AudioSuite);
		err = properties->AddProperty(AAX_eProperty_PlugInID_TI, cPreampCtrl_PlugInID_TI);
	}
	else // Stereo
	{
		err = properties->AddProperty(AAX_eProperty_PlugInID_Native, cPreampCtrl_PlugInID_Native_Stereo);
		err = properties->AddProperty(AAX_eProperty_PlugInID_TI, cPreampCtrl_PlugInID_TI_Stereo);
	}

	err = properties->AddPointerProperty(AAX_eProperty_NativeProcessProc,
		reinterpret_cast<const void*>(&PreampCtrl_AlgorithmProcessFunction));

#ifndef AAX_TI_BINARY_IN_DEVELOPMENT
	err = properties->AddProperty(AAX_eProperty_TI_InstanceCycleCount, 102);
	err = properties->AddProperty(AAX_eProperty_TI_SharedCycleCount, 70);
#endif
	err = properties->AddProperty(AAX_eProperty_DSP_AudioBufferLength, AAX_eAudioBufferLengthDSP_Default);

	err = properties->AddPointerProperty(AAX_eProperty_TIDLLFileName, "PreampCtrl_MM_TI_Example.dll");
	err = properties->AddPointerProperty(AAX_eProperty_TIProcessProc, "AlgEntry");

	err = outDesc->AddProcessProc(properties);
}

// ***************************************************************************
// ROUTINE:	DescribeEffect
// ***************************************************************************
static AAX_Result DescribeEffect( AAX_IEffectDescriptor* outDescriptor )
{
	AAX_CheckedResult err;
	AAX_IComponentDescriptor* const compDesc = outDescriptor->NewComponentDescriptor ();
	if ( !compDesc )
		err = AAX_ERROR_NULL_OBJECT;
	
	// Effect identifiers
	//
	err = outDescriptor->AddName ( "PreampCtrl-OSC" );
	err = outDescriptor->AddName ( "PreampCtrl" );
	err = outDescriptor->AddName ( "PrCtrl" );
	err = outDescriptor->AddName ( "PrCt" );
	err = outDescriptor->AddName ( "PrC" );
	err = outDescriptor->AddName ( "PC" );
	err = outDescriptor->AddCategory ( AAX_ePlugInCategory_None );
	
	// Effect components
	//
	// Algorithm component
	// Mono
	err = compDesc->Clear();
	DescribeAlgorithmComponent(compDesc, AAX_eStemFormat_Mono);
	err = outDescriptor->AddComponent(compDesc);

	// Stereo
	err = compDesc->Clear();
	DescribeAlgorithmComponent(compDesc, AAX_eStemFormat_Stereo);
	err = outDescriptor->AddComponent(compDesc);


	//
	// Data model
	err = outDescriptor->AddProcPtr( reinterpret_cast<void*>(PreampCtrl_Parameters::Create), kAAX_ProcPtrID_Create_EffectParameters );
	err = outDescriptor->AddResourceInfo ( AAX_eResourceType_PageTable, "PreampCtrlPages.xml" );
	
	// Effect's meter display properties
	//
	// Input meter
	{
		AAX_IPropertyMap* const meterProperties = outDescriptor->NewPropertyMap();
		if ( !meterProperties )
			err = AAX_ERROR_NULL_OBJECT;
		
		err = meterProperties->AddProperty ( AAX_eProperty_Meter_Type, AAX_eMeterType_Input );
		err = meterProperties->AddProperty ( AAX_eProperty_Meter_Orientation, AAX_eMeterOrientation_Default );
		err = outDescriptor->AddMeterDescription( cPreampCtrl_MeterID[eMeterTap_PreGain], "Input", meterProperties );
	}
	// Output meter
	{
		AAX_IPropertyMap* const meterProperties = outDescriptor->NewPropertyMap();
		if ( !meterProperties )
			err = AAX_ERROR_NULL_OBJECT;
		
		err = meterProperties->AddProperty ( AAX_eProperty_Meter_Type, AAX_eMeterType_Output );
		err = meterProperties->AddProperty ( AAX_eProperty_Meter_Orientation, AAX_eMeterOrientation_Default );
		err = outDescriptor->AddMeterDescription( cPreampCtrl_MeterID[eMeterTap_PostGain], "Output", meterProperties );
	}
	
	return err;
}

// ***************************************************************************
// ROUTINE:	GetEffectDescriptions
// ***************************************************************************
AAX_Result GetEffectDescriptions( AAX_ICollection* outCollection )
{
	AAX_CheckedResult err;
	AAX_IEffectDescriptor* const plugInDescriptor = outCollection->NewDescriptor();
	if ( plugInDescriptor )
	{
		AAX_SWALLOW_MULT(
			err = DescribeEffect( plugInDescriptor );
			err = outCollection->AddEffect( kEffectID_PreampCtrl, plugInDescriptor );
		);
	}
	else
		err = AAX_ERROR_NULL_OBJECT;
	
	err = outCollection->SetManufacturerName( "Christian Alpen Coding Godness" );
	err = outCollection->AddPackageName( "PreampCtrl-OSC" );
	err = outCollection->AddPackageName( "PreampCtrl-OSC" );
	err = outCollection->AddPackageName( "PrC" );
	err = outCollection->SetPackageVersion( 1 );
	
	return err;
}
