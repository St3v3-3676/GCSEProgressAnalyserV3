//
//  StudentExamDateView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentExamDateView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    var body: some View {
        VStack {
            
                ExamDatePickerView(isMonthPicker: true)
                ExamDatePickerView(isMonthPicker: false)
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: gradeBoundaryViewModel.subjectHorizontalRectangleWidth + 0.4, rectangleHeight: gradeBoundaryViewModel.verticalRectangleHeight + 30, text: "Month of Exam:", font: appWideViewModel.viewContentFont)
//
//                Picker(calculatorViewModel.monthPickerText, selection: $calculatorViewModel.selectedMonth) {
//                        ForEach(calculatorViewModel.months, id: \.self) { subjects in
//                            Text(subjects)
//                        }
//                    }
                }
                
//            HStack {
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: gradeBoundaryViewModel.subjectHorizontalRectangleWidth + 0.4, rectangleHeight: gradeBoundaryViewModel.verticalRectangleHeight + 30, text: "Year of Exam:", font: appWideViewModel.viewContentFont)
//                    .padding(.trailing)
//                
//                Picker(calculatorViewModel.monthPickerText, selection: $calculatorViewModel.selectedYear) {
//                    ForEach(calculatorViewModel.years, id: \.self) { subjects in
//                        Text(subjects)
//                    }
//                }
//                
//            }
            
            SeperatorView()
            .padding(.top)
        }

    }


#Preview {
    StudentExamDateView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
}
