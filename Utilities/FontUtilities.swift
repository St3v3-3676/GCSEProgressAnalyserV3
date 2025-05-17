//
//  FontUtilities.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//
import SwiftUI

struct FontUtilities {
    func setImageFont() -> Font {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.imageFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.imageFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return Fonts.large.imageFont
        } else {
            return Fonts.extraLarge.imageFont
        }
    }
    
    func setTextFont(textType: String) -> Font {
        var textFont = Font.system(size: 17, weight: .regular, design: .default)
        if textType == TextStringTypes.title.type {
            textFont = getTitleFont()
        } else if textType == TextStringTypes.content.type {
            textFont = getContentFont()
        } else if textType == TextStringTypes.textField.type {
            textFont = getTextFieldFont()
        }
        return textFont
    }
    
    func getTextFieldLeadingPadding() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return PaddingModel.init().textFieldLeadingPadding + PaddingModel.init().textFieldLeadingPaddingExtraSmallAdjustment
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return PaddingModel.init().textFieldLeadingPadding
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return PaddingModel.init().textFieldLeadingPadding - 10
        } else {
            return PaddingModel.init().textFieldLeadingPadding
        }
    }
    func getTextFieldFont() -> Font {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.textFieldFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.textFieldFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return Fonts.large.textFieldFont
        } else {
            return Fonts.extraLarge.textFieldFont
        }
    }
    
    func getContentFont() -> Font {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.contentFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.contentFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            return Fonts.large.contentFont
        } else {
            return Fonts.extraLarge.contentFont
        }
    }
    
    func getTitleFont() -> Font {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.titleFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.titleFont
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            return Fonts.large.titleFont
        } else {
            return Fonts.extraLarge.titleFont
        }
    }
}
