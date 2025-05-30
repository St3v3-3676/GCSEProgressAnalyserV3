//
//  Fonts.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum Fonts {
    case viewMainTitle; case sectionTitle; case contentFont; case textFieldFont; case imageFont
    
    var widthMultiplier: CGFloat {
        switch self {
        case .viewMainTitle:
            return 0.075
        case .sectionTitle:
            return 0.07
        case .contentFont:
            return 0.06
        case .textFieldFont:
            return 0.06
        case .imageFont:
            return 0.05
        }
    }
}
