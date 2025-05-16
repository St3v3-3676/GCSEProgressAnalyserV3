//
//  AppToolsModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 07/04/2025.
//

import Foundation
import SwiftUI

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

enum AppToolsNavigationLinkTitles {
    case addStudentsAndClasses
    case studentResults
    case gradeBoundaries
    case resultsAnalysis
    
    var title: String {
        switch self {
        case .addStudentsAndClasses:
            return "Add Students & Classes"
        case .studentResults:
            return "Student Results"
        case .gradeBoundaries:
            return "Grade Boundaries"
        case .resultsAnalysis:
            return "Results Analysis"
        }
    }
}
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


