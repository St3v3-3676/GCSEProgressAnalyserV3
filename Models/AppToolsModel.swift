//
//  AppToolsModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 07/04/2025.
//

import Foundation
import SwiftUI

enum AppToolsNavigationLinks {
    case addStudentsAndClasses
    case studentResults
    case gradeBoundaries

    
    var destination: AnyView {
        switch self {
        case .addStudentsAndClasses:
            return AnyView(StudentsAndClassesView())
        case .studentResults:
            return AnyView(CSStudentsResultsFilesView())
        case .gradeBoundaries:
            return AnyView(GradeBoundariesView())


        }
    }
}

enum AppToolsTitleImageCoordinates  {
    case XCoordinate
    case YCoordinate
    
    var coordinate: CGFloat {
        switch self {
        case .XCoordinate:
            return ScreenDimensionsUtilitites.init().getScreenWidth() / 2
        case .YCoordinate:
            return ScreenDimensionsUtilitites.init().getScreenWidth() / 6.5
        }
    }
}

