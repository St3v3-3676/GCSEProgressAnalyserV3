//
//  PaddingModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//

import SwiftUI

enum TextFieldPaddingValues {
    case extraSmall
    case small
    case medium
    case large
    
    var paddingValue: CGFloat {
        switch self {
        case .extraSmall:
            return 85
        case .small:
            return 95
        case .medium:
            return 105
        case .large:
            return 120
        }
    }
    
}

struct PaddingModel  {
    let paddingValue: CGFloat = -10
    let paddingTopAlignment: Edge.Set = .top
    let paddingBottomAlignment: Edge.Set = .bottom

    let textFieldLeadingPadding: CGFloat = 50
    let textFieldLeadingPaddingExtraSmallAdjustment: CGFloat = 15
    
    let textFieldAndLabelBottomPaddingValue = -5
    
    let appToolsImageTopPadding: CGFloat = 50
    
}

