//
//  ViewNames.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//


enum ViewNames {
    case studentDetails; case gradeBoundaries
    
    var viewName: String {
        switch self {
        case .studentDetails:
            return "student details"
        case .gradeBoundaries:
            return "grade boundaries"
        }
    }
}