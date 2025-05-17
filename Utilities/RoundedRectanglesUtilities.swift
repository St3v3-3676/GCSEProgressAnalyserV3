//
//  RoundedRectanglesUtilities.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//
import Foundation

struct RoundedRectanglesUtilities {
    func getRectangleHeight() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return RectangleHeightMultipliers.extraSmallScreen.multiplierValue
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth{
            return RectangleHeightMultipliers.standardScreen.multiplierValue
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return RectangleHeightMultipliers.largeScreen.multiplierValue
        } else {
            return RectangleHeightMultipliers.extraLargeScreen.multiplierValue
        }
    }
    
    func getSmallRectangleWidth() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth{
            return HorizontalRectangleWidths.extraSmallScreen.smallRectangle
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return HorizontalRectangleWidths.standardScreen.smallRectangle
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return HorizontalRectangleWidths.largeScreen.smallRectangle
        } else {
            return HorizontalRectangleWidths.extraLargeScreen.smallRectangle
        }
    }
    
    func getMediumRectangleWidth() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return HorizontalRectangleWidths.extraSmallScreen.mediumRectangle
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return HorizontalRectangleWidths.standardScreen.mediumRectangle
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            return HorizontalRectangleWidths.largeScreen.mediumRectangle
        } else {
            return HorizontalRectangleWidths.extraLargeScreen.mediumRectangle
        }
    }
    
    func getLargeRectangleWidth() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            return HorizontalRectangleWidths.extraSmallScreen.largeRectangle
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            return HorizontalRectangleWidths.standardScreen.largeRectangle
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            return HorizontalRectangleWidths.largeScreen.largeRectangle
        } else {
            return HorizontalRectangleWidths.extraLargeScreen.largeRectangle
        }
    }
    
    func getVerticalRectangleWidth() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            
            return RectangleModel.init().verticleRectangleWidth
            
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            
            return RectangleModel.init().verticleRectangleWidth
            
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            
            return RectangleModel.init().verticleRectangleWidth
            
        } else {
            
            return RectangleModel.init().verticleRectangleWidth
        }
    }
    
    func getVerticalRectangleHeight() -> CGFloat {
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth{
            
            return VerticalRectangleHeights.extraSmallScreen.heightValue
            
        }else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            
            return VerticalRectangleHeights.standardScreen.heightValue
            
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            
            return VerticalRectangleHeights.largeScreen.heightValue
            
        } else {
            
            return VerticalRectangleHeights.extraLargeScreen.heightValue
        }
    }
}
