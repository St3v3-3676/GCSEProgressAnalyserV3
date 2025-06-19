//
//  StudentDetailsFirstnameTextFieldView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentDetailsView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @Bindable var studentDetailsSection: StudentDetailsSectionViewModel
    
    let textFieldName: String
    let xPaddingMultiplier: CGFloat

    var body: some View {
        VStack {
            Spacer()
        }
//        GeometryReader { geometry in
//            
//            let width = geometry.size.width
//            let fieldWidth = width * 0.85
//            let fieldHeight = width * 0.08
//            
//            ZStack(alignment: .center) {
//                RoundedRectangleView(
//                    colour: Colours.blueScheme.colour,
//                    width: fieldWidth,
//                    height: fieldHeight)
//                
//                TextField(
//                    "",
//                    text: AppStringUtilities(studentDetailsSection: studentDetailsSection).getEnteredStudentDetails(textFieldName: textFieldName))
//                    .font(.system(size: width * Fonts.textFieldFont.widthMultiplier))
//                    .padding(.leading)
//                    .keyboardType(.asciiCapable)
//                    .scrollDismissesKeyboard(.automatic)
//            }
//            .frame(width: fieldWidth, height: fieldHeight)
//            .padding(.leading, width * xPaddingMultiplier)
//        }
//        .frame(height: 60)
    }
        
}

#Preview {
    StudentDetailsView(
        studentDetailsSection: StudentDetailsSectionViewModel(), textFieldName: TextFieldPromptStrings.firstnameTextFieldPrompt.promptText,
        xPaddingMultiplier: 0.05)
    .environmentObject(CSGradeCalculatorViewModel())
    .environment(StudentDetailsSectionViewModel())
    .environment(GradeBoundarySelectionViewModel())
    
}
