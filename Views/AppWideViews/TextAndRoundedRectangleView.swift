//
//  TextAndRoundedRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//
import SwiftUI

struct TextAndRoundedRectangleView: View {
    
    let text: String
    let rectangleColour: Color

    var body: some View {
        ZStack {
            Text(text)
                .font(.title)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(rectangleColour)
                        .shadow(radius: 5)
               )
        }
    }
}

