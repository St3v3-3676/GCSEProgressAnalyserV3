//
//  TextAndRoundedRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 11/04/2025.
//

import SwiftUI
import SwiftUICore

struct RoundedRectangleView: View {
    @Environment(AppWideViewModel.self) var appWideViewModel
    
    var colour: Color
    
    var width: CGFloat
    var height: CGFloat
    var heightMultiplier: CGFloat

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(colour)
                .frame(width: appWideViewModel.getScreenWidth() / width, height: height * heightMultiplier)
                .shadow(radius: 10)
        }
    }
}







