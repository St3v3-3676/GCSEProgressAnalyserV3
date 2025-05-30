//
//  PhoneScreenWidths.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/05/2025.
//
import SwiftUI

enum PhoneScreenWidths: CaseIterable, Identifiable {
    case extraSmall; case standard; case large; case extraLarge
    
    var id: Self {
        self
    }
    
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
    
    static func current() -> PhoneScreenWidths {
        let width = UIScreen.main.bounds.width
        switch width {
        case ..<380:
            return .extraSmall
        case ..<410:
            return .standard
        case ..<440:
            return .large
        default:
            return .extraLarge
        }
        
    }
}
