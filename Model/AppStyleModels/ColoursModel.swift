//
//  Colours.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum Colours {
    case blueScheme; case greenScheme; case appFontColours
    
    var colour: Color {
        switch self {
        case .blueScheme:
            return Color.blueScheme
        case .greenScheme:
            return Color.greenScheme
        case .appFontColours:
            return Color.appFontColours
        }
    }
}
