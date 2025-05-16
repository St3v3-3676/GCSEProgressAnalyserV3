//
//  TabToolBarModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import Foundation
enum TabBarLabelTexts {
    case homeTabText
    case gradeCalculatorTabText
    case ks3AnalyserTabText
    case ks4AnalyserTabText
    case toolsTabText
    case settingsTabText
    
    var labelText: String {
        switch self {
        case .homeTabText:
            return "Home"
        case .gradeCalculatorTabText:
            return "Grade Calculator"
        case .ks3AnalyserTabText:
            return "KS3 Analyser"
        case .ks4AnalyserTabText:
            return "KS4 Analyser"
        case .toolsTabText:
            return "Tools"
        case .settingsTabText:
            return "Settings"
        }
    }
}

