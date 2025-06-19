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
    
    var body: some View {

        VStack(alignment: .center, spacing: 1) {
            Text("Student Details")
                .frame(maxWidth: .infinity)
                .font(.title2)
                .fontWeight(.semibold)
                .background(RoundedRectangle(cornerRadius: 8).fill(Colours.blueScheme.colour))
//            TextAndRoundedRectangleView(text: "Student Details", rectangleColour: Colours.blueScheme.colour
//            )
            .padding(.bottom, 15)
            
            Text("Enter the student's details:")
                .padding(.bottom, 15)
            
            createLabelAndTextField()
        }
    }
    
    fileprivate func createLabelAndTextField() -> some View {
        return ForEach(TextFieldNames.allCases, id: \.self) { labelString in
            VStack(alignment: .leading, spacing: 20) {
                GradeCalculatorStudentDetailsTextFieldLabel(
                    textFieldName: labelString.textFieldName)
                .padding(.bottom, 15)
                .padding(.leading, 30)
                
                StudentDetailsView(studentDetailsSection: studentDetailsSectionViewModel, textFieldName: labelString.textFieldName, xPaddingMultiplier: 0.5)
                    .frame(height: 5)
            }
        }

    }
}

#Preview {
    CalculatorStudentDetailsView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
