//
//  RectangleModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//


import SwiftUI

enum HorizontalRectangleWidths {
    case extraSmallScreen; case standardScreen; case largeScreen; case extraLargeScreen
    
    var smallRectangle: CGFloat {
        switch self {
            case .extraSmallScreen:
            return 5
        case .standardScreen:
            return 5
        case .largeScreen:
            return 4.5
        case .extraLargeScreen:
            return 4.5
        }
    }
    
    var mediumRectangle: CGFloat {
        switch self {
        case .extraSmallScreen:
            return 1.5
        case .standardScreen:
            return 1.4
        case .largeScreen:
            return 1.3
        case .extraLargeScreen:
            return 1.4
        }
    }
    
    var largeRectangle: CGFloat {
        switch self {
        case .extraSmallScreen:
            return 1.35
        case .standardScreen:
            return 1.2
        case .largeScreen:
            return 1.1
        case .extraLargeScreen:
            return 1.15
        }
    }
}

enum RectangleHeightMultipliers {
    case extraSmallScreen; case standardScreen; case largeScreen; case extraLargeScreen
    
    var multiplierValue: CGFloat {
        switch self {
        case .extraSmallScreen:
            return 6.2
        case .standardScreen:
            return 6.5
        case .largeScreen:
            return 6.8
        case .extraLargeScreen:
            return 7.1
        }
    }
}

enum VerticalRectangleHeights {
    case extraSmallScreen; case standardScreen; case largeScreen; case extraLargeScreen
    
    var heightValue: CGFloat {
        switch self {
        case .extraSmallScreen:
            return 45
        case .standardScreen:
            return 50
        case .largeScreen:
            return 50
        case .extraLargeScreen:
            return 55
        }
    }
}

enum ShadowRadiusValues {
    case large
    
    var radiusValue: CGFloat {
        return 50
    }
}

struct RectangleModel {
    let rectangleHeight: CGFloat = 40
    
    let verticleRectangleWidth: CGFloat = 6
    let sectionSeparatorWidthMultiplier: CGFloat = 1.5
    let sectionSeparatorHeightMultiplier: CGFloat = 0.005
}
