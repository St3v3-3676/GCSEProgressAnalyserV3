//
//  GradeCalculatorTitleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct TitleView: View {
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    var viewTitle: String
    
    var body: some View {
        if viewTitle == "student details" {
            TextAndRoundedRectangleView(
                rectangleColour: Colours.blueScheme.colour,
                rectangleType: "large",
                text: ViewTitles.studentDetailsSectionTitle.title,
                textType: "title"
            )
        } else if viewTitle == "grade boundaries" {
            TextAndRoundedRectangleView(
                rectangleColour: Colours.blueScheme.colour,
                rectangleType: "medium",
                text: ViewTitles.gradeBoundaryViewerTitle.title,
                textType: "title"
            )
        }
        
    }
}

