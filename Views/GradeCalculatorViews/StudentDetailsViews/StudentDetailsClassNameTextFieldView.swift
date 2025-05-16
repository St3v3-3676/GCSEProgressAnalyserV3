//
//  StudentDetailsClassNameTextFieldView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentDetailsClassNameTextFieldView: View {
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @Bindable var studentSectionViewModel: StudentDetailsSectionViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangleView(
                colour: Colours.blueScheme.colour,
                width: studentDetailsSectionViewModel.getLargeRectangleWidth(),
                height: studentDetailsSectionViewModel.getRectangleHeight(),
                heightMultiplier: studentSectionViewModel.getRectangleHeight())
            
            TextField(
                TextFieldPrompts.classnameTextFieldPrompt.promptText,
                text: $studentSectionViewModel.enteredClassName)
                .font(studentDetailsSectionViewModel.getTextFieldFont())
                .padding(.leading, studentDetailsSectionViewModel.getTextFieldLeadingPadding())
                .keyboardType(.asciiCapable)
                .scrollDismissesKeyboard(.automatic)

        }
    }
}

