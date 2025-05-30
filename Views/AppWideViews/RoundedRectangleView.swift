//
//  TextAndRoundedRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 11/04/2025.
//

import SwiftUI
import SwiftUICore

struct RoundedRectangleView: View {
    var colour: Color
    
    var width: CGFloat
    var height: CGFloat
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 10)
                .fill(colour)
                .frame(width: width, height: height)
                .shadow(radius: 10)
        }
    }
}







