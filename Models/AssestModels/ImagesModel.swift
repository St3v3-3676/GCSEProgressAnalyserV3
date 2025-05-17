//
//  ImagesModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//

import Foundation

enum Images {
    case appLogo
    case redLogo
    case yellowLogo
    case firstnameTextLabelImage
    case surnameTextFieldLabelImage
    case classNameTextFieldLabelImage
    case targetGradeTextFieldLabelImage
    case homeTabImageName
    case gradeCalculatorTabImageName
    case Ks3AnalyserTabImageName
    case Ks4AnalyserTabImageName
    case ToolsTabImageName
    case settingsTabImageName
    
    var imageName: String {
        switch self {
        case .appLogo:
            return "App Logo"
        case .redLogo:
            return "Home View Logo 2"
        case .yellowLogo:
            return "Home View Logo 3"
        case .firstnameTextLabelImage:
            return "person.fill"
        case .surnameTextFieldLabelImage:
            return "person.fill"
        case .classNameTextFieldLabelImage:
            return "building.columns"
        case .targetGradeTextFieldLabelImage:
            return "arrow.up.arrow.down.circle"
        case .homeTabImageName:
            return "house"
        case .gradeCalculatorTabImageName:
            return "calculate"
        case .Ks3AnalyserTabImageName:
            return "chart-bar-line-up"
        case .Ks4AnalyserTabImageName:
            return "chart-bar-line-up"
        case .ToolsTabImageName:
            return "wrench.and.screwdriver"
        case .settingsTabImageName:
            return "gear"
        }
    }
}

enum AppToolsImages {
    case addStudentsAndClasses; case studentResults; case gradeBoundaries
    case resultsAnalysis; case toolsViewImage
    
    var imageName: String {
        switch self {
        case .addStudentsAndClasses:
            return "person.fill.checkmark"
        case .studentResults:
            return "graduationcap.fill"
        case .gradeBoundaries:
            return "chevron.up.forward.2"
        case .resultsAnalysis:
            return "chart.bar.xaxis.ascending"
        case .toolsViewImage:
            return "wrench.and.screwdriver"
        }
    }
}

