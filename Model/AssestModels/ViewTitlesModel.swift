//
//  ViewTitles.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum ViewTitles {
    case appToolsViewTitle
    case gradeBoundaryViewerTitle
    case gradeCalculatorViewTitle
    case settingsViewTitle
    case studentDetailsSectionTitle
    
    var title: String {
        switch self {
        case .appToolsViewTitle:
            return "App Tools"
        case .gradeBoundaryViewerTitle:
            return "Grade Boundary Viewer"
        case .gradeCalculatorViewTitle:
            return "Grade Calculator"
        case .settingsViewTitle:
            return "Settings"
        case .studentDetailsSectionTitle:
            return "Enter Student Details:"
        }
    }
}
