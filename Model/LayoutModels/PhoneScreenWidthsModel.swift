//
//  PhoneScreenWidths.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum PhoneScreenWidths {
    case extraSmall; case standard; case large; case extraLarge
    
    var screenWidth: CGFloat {
        switch self {
        case .extraSmall:
            return 375
        case .standard:
            return 393
        case .large:
            return 430
        case .extraLarge:
            return 440
        }
    }
}
