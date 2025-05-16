//
//  AppWideViewModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 12/04/2025.
//

import Foundation
import Observation
import SwiftUI

@Observable
class AppWideViewModel {
    func getTextFieldLeadingPadding() -> CGFloat {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return PaddingModel.init().textFieldLeadingPadding + PaddingModel.init().textFieldLeadingPaddingExtraSmallAdjustment
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return PaddingModel.init().textFieldLeadingPadding
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return PaddingModel.init().textFieldLeadingPadding - 10
        } else {
            return PaddingModel.init().textFieldLeadingPadding
        }
    }
    func getTextFieldFont() -> Font {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.textFieldFont
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.textFieldFont
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return Fonts.large.textFieldFont
        } else {
            return Fonts.extraLarge.textFieldFont
        }
    }
    
    func getContentFont() -> Font {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.contentFont
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.contentFont
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            return Fonts.large.contentFont
        } else {
            return Fonts.extraLarge.contentFont
        }
    }
    
    func getTitleFont() -> Font {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return Fonts.extraSmall.titleFont
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return Fonts.standard.titleFont
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            return Fonts.large.titleFont
        } else {
            return Fonts.extraLarge.titleFont
        }
    }
        
    func getRectangleHeight() -> CGFloat {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return RectangleHeightMultipliers.extraSmallScreen.multiplierValue
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth{
            return RectangleHeightMultipliers.standardScreen.multiplierValue
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return RectangleHeightMultipliers.largeScreen.multiplierValue
        } else {
            return RectangleHeightMultipliers.extraLargeScreen.multiplierValue
        }
    }
    
    func getSmallRectangleWidth() -> CGFloat {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth{
            return HorizontalRectangleWidths.extraSmallScreen.smallRectangle
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return HorizontalRectangleWidths.standardScreen.smallRectangle
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return HorizontalRectangleWidths.largeScreen.smallRectangle
        } else {
            return HorizontalRectangleWidths.extraLargeScreen.smallRectangle
        }
    }
    
    func getMediumRectangleWidth() -> CGFloat {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return HorizontalRectangleWidths.extraSmallScreen.mediumRectangle
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return HorizontalRectangleWidths.standardScreen.mediumRectangle
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            return HorizontalRectangleWidths.largeScreen.mediumRectangle
        } else {
            return HorizontalRectangleWidths.extraLargeScreen.mediumRectangle
        }
    }
    
    func getLargeRectangleWidth() -> CGFloat {
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return HorizontalRectangleWidths.extraSmallScreen.largeRectangle
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return HorizontalRectangleWidths.standardScreen.largeRectangle
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return HorizontalRectangleWidths.largeScreen.largeRectangle
        } else {
            return HorizontalRectangleWidths.extraLargeScreen.largeRectangle
        }
    }
          
    func getScreenWidth() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        return screenWidth
    }
        
    func getScreenHeight() -> CGFloat {
        let screenHeight = UIScreen.main.bounds.height
        return screenHeight
    }
}

