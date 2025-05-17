//
//  FrameWidths.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum FrameWidths {
    case appToolsImageWidth
    case homeScreenLogoFrameWidth
    
    var width: CGFloat {
        switch self {
        case .appToolsImageWidth:
            return 200
        case .homeScreenLogoFrameWidth:
            return 500
        }
    }
}

enum FrameHeights {
    case appToolsImageHeight
    case homeScreenLogoFrameHeight
    
    var height: CGFloat {
        switch self {
        case .appToolsImageHeight:
            return 200
        case .homeScreenLogoFrameHeight:
            return 370
        }
    }
}
