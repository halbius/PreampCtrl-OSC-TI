#pragma once
#include "AAX_CEffectGUI.h"

// Forward-Declarations für Obj-C Typen (kein Obj-C im Header nötig)
#ifdef __OBJC__
@class NSView;
@class NSTextField;
@class NSButton;
#else
typedef void NSView;
typedef void NSTextField;
typedef void NSButton;
#endif

class MyPlugin_GUI : public AAX_CEffectGUI
{
public:
    static AAX_IEffectGUI* AAX_CALLBACK Create();

    MyPlugin_GUI();
    virtual ~MyPlugin_GUI();

    // Pflichtmethoden
    AAX_Result CreateViewContents() override;
    AAX_Result CreateViewContainer() override;
    void       DeleteViewContainer() override;
    AAX_Result GetViewSize(AAX_Point* oEffectViewSize) const override;
    AAX_Result Draw(AAX_Rect* iDrawRect) override;

private:
    static const int kInfoBarHeight = 36;

    NSTextField* mInfoLabel;
    NSButton*    mAboutButton;
};
