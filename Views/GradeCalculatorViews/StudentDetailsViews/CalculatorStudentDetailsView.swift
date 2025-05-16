//
//  StudentDetailsView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 25/02/2025.
//

import SwiftUI

struct CalculatorStudentDetailsView: View {
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel

    @Environment(\.colorScheme) var colorScheme
    
    @FocusState private var currentFocus: String?

    var body: some View {
        VStack {
            TitleView(viewTitle: ViewNames.studentDetails.viewName)
            
            GradeCalculatorStudentDetailsTextFieldLabel(
                textFieldName: TextFieldNames.firstnameTextFieldName.textFieldName)
            .padding(.trailing, CGFloat(studentDetailsSectionViewModel.getTextFieldPaddingValue(textFieldName:TextFieldNames.firstnameTextFieldName.textFieldName)))
            .padding(.bottom, CGFloat(PaddingModel.init().textFieldAndLabelBottomPaddingValue))
            
            StudentDetailsFirstnameTextFieldView(studentDetailsSection: StudentDetailsSectionViewModel())
            
            GradeCalculatorStudentDetailsTextFieldLabel(textFieldName: TextFieldNames.surnameTextFieldName.textFieldName)
                .padding(.trailing, CGFloat(studentDetailsSectionViewModel.getTextFieldPaddingValue(textFieldName: TextFieldNames.surnameTextFieldName.textFieldName)))
                .padding(.bottom, CGFloat(PaddingModel.init().textFieldAndLabelBottomPaddingValue))
            StudentDetailsSurnameTextFieldView()
            
            GradeCalculatorStudentDetailsTextFieldLabel(textFieldName: TextFieldNames.classnameTextFieldName.textFieldName)
                .padding(.trailing, CGFloat(studentDetailsSectionViewModel.getTextFieldPaddingValue(textFieldName: TextFieldNames.classnameTextFieldName.textFieldName) ))
                .padding(.bottom, CGFloat(PaddingModel.init().textFieldAndLabelBottomPaddingValue))
            
            StudentDetailsClassNameTextFieldView(studentSectionViewModel: StudentDetailsSectionViewModel())
            
            GradeCalculatorStudentDetailsTextFieldLabel(textFieldName: TextFieldNames.targetGradeTextFieldName.textFieldName)
                .padding(.trailing, CGFloat(studentDetailsSectionViewModel.getTextFieldPaddingValue(textFieldName: TextFieldNames.targetGradeTextFieldName.textFieldName)))
                .padding(.bottom, CGFloat(PaddingModel.init().textFieldAndLabelBottomPaddingValue))
            
            StudentDetailsTargetGradeTextFieldView()

            
        }
    }
}

#Preview {
    CalculatorStudentDetailsView()
        .environmentObject(GradeCalculatorViewModel())
        .environment(AppWideViewModel())
        .environment(GradeBoundaryViewerViewModel())
        .environment(StudentDetailsSectionViewModel())
}
