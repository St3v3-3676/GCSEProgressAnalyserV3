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
            TextAndRoundedRectangleView(text: ViewTitleStrings.studentDetailsSectionTitle.title, rectangleColour: Colours.blueScheme.colour)
        } else if viewTitle == "grade boundaries" {
            TextAndRoundedRectangleView(text: ViewTitleStrings.gradeBoundaryViewerTitle.title, rectangleColour: Colours.blueScheme.colour)
        }
        
    }
}

