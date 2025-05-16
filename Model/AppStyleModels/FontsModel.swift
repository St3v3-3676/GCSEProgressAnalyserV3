//
//  Fonts.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum Fonts {
    case extraSmall; case standard; case large; case extraLarge
    
    var titleFont : Font {
        switch self {
        case .extraSmall:
            return Font.system(size: 24, weight: .semibold)
        case .standard:
            return Font.system(size: 28, weight: .semibold)
        case .large:
            return Font.system(size: 29, weight: .semibold)
        case .extraLarge:
            return Font.system(size: 32, weight: .semibold)
        }
    }
    
    var contentFont : Font {
        switch self {
        case .extraSmall:
            return Font.system(size: 22, weight: .regular)
        case .standard:
            return Font.system(size: 26, weight: .regular)
        case .large:
            return Font.system(size: 27, weight: .regular)
        case .extraLarge:
            return Font.system(size: 30, weight: .regular)
        }
    }
    
    var textFieldFont : Font {
        switch self {
        case .extraSmall:
            return Font.system(size: 18, weight: .regular)
        case .standard:
            return Font.system(size: 22, weight: .regular)
        case .large:
            return Font.system(size: 24, weight: .regular)
        case .extraLarge:
            return Font.system(size: 26, weight: .regular)
        }
    }
}
