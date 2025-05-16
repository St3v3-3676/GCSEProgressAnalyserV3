//
//  GradeBoundariesRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//
import SwiftUI

struct GradeBoundariesRectangleView : View {
    @Environment(GradeBoundaryViewerViewModel.self) var gradeBoundaryViewModel
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    
    let font: Font
    let rectangleColour: Color
    let textType: String

    var isKey: Bool
    
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangleView(
                        colour: rectangleColour,
                        width: gradeBoundaryViewModel.getVerticalRectangleWidth(),
                        height: gradeBoundaryViewModel.getVerticalRectangleHeight(),
                        heightMultiplier: gradeBoundaryViewModel.getRectangleHeight())

                Grid {
                    ForEach(calculatorViewModel.gradeBoundaries.sorted(by: { $0.key < $1.key }), id: \.key) { (key, value) in
                        Text(isKey ? "\(key)" : "\(value)")
                            .font(gradeBoundaryViewModel.getContentFont())
                            .foregroundStyle(.appFontColours)
                    }
                }
            }
        }
    }
}
