//
//  ScreenDimensionsUtilitites.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//
import SwiftUI

struct ScreenDimensionsUtilitites {
    func getScreenWidth() -> CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        return screenWidth
    }
        
    func getScreenHeight() -> CGFloat {
        let screenHeight = UIScreen.main.bounds.height
        return screenHeight
    }
}
