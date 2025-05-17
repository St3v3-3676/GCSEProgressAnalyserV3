//
//  StudentDetailsSurnameTextFieldView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentDetailsSurnameTextFieldView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @Bindable var studentSectionViewModel = StudentDetailsSectionViewModel()
    
    var body: some View {
        ZStack {
            RoundedRectangleView(
                colour: Colours.blueScheme.colour,
                width: RoundedRectanglesUtilities.init().getLargeRectangleWidth(),
                height: RoundedRectanglesUtilities.init().getRectangleHeight(),
                heightMultiplier: RoundedRectanglesUtilities.init().getRectangleHeight())
            
            TextField(
                TextFieldPromptStrings.surnameTextFieldPrompt.promptText,
                text: $studentSectionViewModel.enteredSurname)
            .font(FontUtilities.init().getTextFieldFont())
                .padding(.leading, PaddingUtilities.init().getTextFieldPaddingValue(textFieldName: TextFieldPromptStrings.surnameTextFieldPrompt.promptText))
                .keyboardType(.asciiCapable)
                .scrollDismissesKeyboard(.automatic)
        }
    }
}

