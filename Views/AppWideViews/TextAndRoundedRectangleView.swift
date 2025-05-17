//
//  TextAndRoundedRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//
import SwiftUI

struct TextAndRoundedRectangleView: View {
    var rectangleColour: Color
    var rectangleType: String
    var text: String
    var textType: String

    var body: some View {
        ZStack {
            if rectangleType == "small" {
                RoundedRectangleView(
                    colour: rectangleColour,
                    width: RoundedRectanglesUtilities.init().getSmallRectangleWidth(),
                    height: RoundedRectanglesUtilities.init().getRectangleHeight(),
                    heightMultiplier: RoundedRectanglesUtilities.init().getRectangleHeight())
                
                if textType == "title"  {
                    Text(text)
                        .font(FontUtilities.init().getTitleFont())
                        .foregroundStyle(.appFontColours)
                } else {
                    Text(text)
                        .font(FontUtilities.init().getContentFont())
                        .foregroundStyle(.appFontColours)
                }
                
            } else if rectangleType == "medium" {
                RoundedRectangleView(
                    colour: rectangleColour,
                    width: RoundedRectanglesUtilities.init().getMediumRectangleWidth(),
                    height: RoundedRectanglesUtilities.init().getRectangleHeight(),
                    heightMultiplier: RoundedRectanglesUtilities.init().getRectangleHeight())
                
                if textType == "title"  {
                    Text(text)
                        .font(FontUtilities.init().getTitleFont())
                        .foregroundStyle(.appFontColours)
                } else {
                    Text(text)
                        .font(FontUtilities.init().getContentFont())
                        .foregroundStyle(.appFontColours)
                }
                
            } else {
                RoundedRectangleView(
                    colour: rectangleColour,
                    width: RoundedRectanglesUtilities.init().getLargeRectangleWidth(),
                    height: RoundedRectanglesUtilities.init().getRectangleHeight(),
                    heightMultiplier: RoundedRectanglesUtilities.init().getRectangleHeight())
                
                if textType == "title"  {
                    Text(text)
                        .font(FontUtilities.init().getTitleFont())
                            .foregroundStyle(.appFontColours)
                } else {
                    Text(text)
                        .font(FontUtilities.init().getContentFont())
                            .foregroundStyle(.appFontColours)
                }
            }
        }
    }
}
