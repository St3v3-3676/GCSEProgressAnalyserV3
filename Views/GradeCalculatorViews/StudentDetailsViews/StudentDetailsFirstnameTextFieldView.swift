//
//  StudentDetailsFirstnameTextFieldView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentDetailsFirstnameTextFieldView: View {
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @Bindable var studentDetailsSection: StudentDetailsSectionViewModel
    
    var body: some View {
        ZStack {
            RoundedRectangleView(
                colour: Colours.blueScheme.colour,
                width: studentDetailsSectionViewModel.getLargeRectangleWidth(),
                height: studentDetailsSectionViewModel.getRectangleHeight(),
                heightMultiplier: studentDetailsSection.getRectangleHeight())
            
            TextField(
                TextFieldPrompts.firstnameTextFieldPrompt.promptText,
                text: $studentDetailsSection.enteredFirstname)
            .font(studentDetailsSectionViewModel.getTextFieldFont())
            .padding(.leading, studentDetailsSectionViewModel.getTextFieldLeadingPadding())
            .keyboardType(.asciiCapable)
            .scrollDismissesKeyboard(.automatic)
        }
    }
}
