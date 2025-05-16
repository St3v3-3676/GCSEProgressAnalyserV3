//
//  StudentDetailsTargetGradeTextFieldView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentDetailsTargetGradeTextFieldView: View {
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @Bindable var studentSectionViewModel = StudentDetailsSectionViewModel()

    var body: some View {
        ZStack {
            RoundedRectangleView(
                colour: Colours.blueScheme.colour,
                width: studentDetailsSectionViewModel.getLargeRectangleWidth(),
                height: studentDetailsSectionViewModel.getRectangleHeight(),
                heightMultiplier: studentDetailsSectionViewModel.getRectangleHeight())
            
            TextField(
                TextFieldPrompts.targetGradeTextFieldPrompt.promptText,
                text: $studentSectionViewModel.enteredTargetGrade)
                .font(studentDetailsSectionViewModel.getTextFieldFont())
                .padding(.leading, studentDetailsSectionViewModel.getTextFieldLeadingPadding())
                .keyboardType(.asciiCapable)
                .scrollDismissesKeyboard(.automatic)
        }
    }
}

