//
//  StudentDetailsView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 25/02/2025.
//

import SwiftUI

struct CalculatorStudentDetailsView: View {
    @Environment(\.colorScheme) var colorScheme
    
    @Bindable var studentDetails: StudentDetailsSectionViewModel
    
    let titlePaddingValue: CGFloat = 30
    let bottomPaddingValue: CGFloat = 15
    let textFieldColourOpacity: Double = 0.4
    let textFieldCornerRadius: CGFloat = 10
    let textFieldPaddingValue: CGFloat = 15
    
    var body: some View {
        VStack(alignment: .center) {
            DynamicTitleTextView(text: "Student Details")
                .padding(.bottom, titlePaddingValue)
            
            DynamicSubTitleTextView(text: "Enter the student's details:")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.bottom, bottomPaddingValue)
        }
        
        VStack(alignment: .leading) {
 
            GradeCalculatorStudentDetailsTextFieldLabel(
                textFieldName: "First name")
            .padding(.leading, textFieldPaddingValue)
            
            
            
            TextField("", text: $studentDetails.enteredFirstname, prompt: Text(TextFieldPromptStrings.firstnameTextFieldPrompt.promptText))
                .background(RoundedRectangle(cornerRadius: textFieldCornerRadius).fill(Color.gray.opacity(textFieldColourOpacity)))
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .center)
            
            
            GradeCalculatorStudentDetailsTextFieldLabel(
                textFieldName: "Surname")
            .padding(.leading, textFieldPaddingValue)
            
            
            TextField("", text: $studentDetails.enteredSurname, prompt: Text(TextFieldPromptStrings.surnameTextFieldPrompt.promptText).font(.headline))
                .background(RoundedRectangle(cornerRadius: textFieldCornerRadius).fill(Color.gray.opacity(textFieldColourOpacity)))
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .center)

            GradeCalculatorStudentDetailsTextFieldLabel(
                textFieldName: "Class name")
            .padding(.leading, textFieldPaddingValue)
            
            
            TextField("", text: $studentDetails.enteredClassName, prompt: Text(TextFieldPromptStrings.classnameTextFieldPrompt.promptText).font(.headline))
                .background(RoundedRectangle(cornerRadius: textFieldCornerRadius).fill(Color.gray.opacity(textFieldColourOpacity)))
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .center)

            GradeCalculatorStudentDetailsTextFieldLabel(
                textFieldName: "Target grade")
            .padding(.leading, textFieldPaddingValue)
            
            
            TextField("", text: $studentDetails.enteredTargetGrade, prompt: Text(TextFieldPromptStrings.targetGradeTextFieldPrompt.promptText).font(.headline))
                .background(RoundedRectangle(cornerRadius: textFieldCornerRadius).fill(Color.gray.opacity(textFieldColourOpacity)))
                .font(.title3)
                .frame(maxWidth: .infinity, alignment: .center)
        }
    }
}
#Preview {
    CalculatorStudentDetailsView(studentDetails: StudentDetailsSectionViewModel())
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}

