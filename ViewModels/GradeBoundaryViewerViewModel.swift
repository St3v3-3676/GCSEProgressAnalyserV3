//
//  GradeBoundaryViewModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import Foundation
import Observation
import SwiftUI

@Observable
class GradeBoundaryViewerViewModel: AppWideViewModel {
    var titleText = ViewTitles.gradeBoundaryViewerTitle.title

    func getVerticalRectangleWidth() -> CGFloat {
        if AppWideViewModel.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            
            return RectangleModel.init().verticleRectangleWidth
            
        } else if AppWideViewModel.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            
            return RectangleModel.init().verticleRectangleWidth
            
        } else if AppWideViewModel.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            
            return RectangleModel.init().verticleRectangleWidth
            
        } else {
            
            return RectangleModel.init().verticleRectangleWidth
        }
    }
    
    func getVerticalRectangleHeight() -> CGFloat {
        if AppWideViewModel.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth{
            
            return VerticalRectangleHeights.extraSmallScreen.heightValue
            
        }else if AppWideViewModel.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            
            return VerticalRectangleHeights.standardScreen.heightValue
            
        } else if AppWideViewModel.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
            
            return VerticalRectangleHeights.largeScreen.heightValue
            
        } else {
            
            return VerticalRectangleHeights.extraLargeScreen.heightValue
        }
    }
}
