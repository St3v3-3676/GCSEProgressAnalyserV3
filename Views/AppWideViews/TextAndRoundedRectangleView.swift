//
//  TextAndRoundedRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//
import SwiftUI

struct TextAndRoundedRectangleView: View {
    @Environment(AppWideViewModel.self) var appWideViewModel
    
    var rectangleColour: Color
    var rectangleType: String
    var text: String
    var textType: String

    var body: some View {
        ZStack {
            if rectangleType == "small" {
                RoundedRectangleView(
                    colour: rectangleColour,
                    width: appWideViewModel.getSmallRectangleWidth(),
                    height: appWideViewModel.getRectangleHeight(),
                    heightMultiplier: appWideViewModel.getRectangleHeight())
                
                if textType == "title"  {
                    Text(text)
                        .font(appWideViewModel.getTitleFont())
                        .foregroundStyle(.appFontColours)
                } else {
                    Text(text)
                        .font(appWideViewModel.getContentFont())
                        .foregroundStyle(.appFontColours)
                }
                
            } else if rectangleType == "medium" {
                RoundedRectangleView(
                    colour: rectangleColour,
                    width: appWideViewModel.getMediumRectangleWidth(),
                    height: appWideViewModel.getRectangleHeight(),
                    heightMultiplier: appWideViewModel.getRectangleHeight())
                
                if textType == "title"  {
                    Text(text)
                        .font(appWideViewModel.getTitleFont())
                        .foregroundStyle(.appFontColours)
                } else {
                    Text(text)
                        .font(appWideViewModel.getContentFont())
                        .foregroundStyle(.appFontColours)
                }
                
            } else {
                RoundedRectangleView(
                    colour: rectangleColour,
                    width: appWideViewModel.getLargeRectangleWidth(),
                    height: appWideViewModel.getRectangleHeight(),
                    heightMultiplier: appWideViewModel.getRectangleHeight())
                
                if textType == "title"  {
                    Text(text)
                        .font(appWideViewModel.getTitleFont())
                            .foregroundStyle(.appFontColours)
                } else {
                    Text(text)
                        .font(appWideViewModel.getContentFont())
                            .foregroundStyle(.appFontColours)
                }
            }
        }
    }
}
