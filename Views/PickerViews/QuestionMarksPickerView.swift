//
//  QuestionMarksPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 29/04/2025.
//

import SwiftUI

struct QuestionMarksPickerView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    var selectedMark: Binding<String>
    
    
    var body: some View {
        var questionMarks: [Int] = calculatorViewModel.getCSPaper1TotalMarks()
        CustomExamMarksPickerView {
            Picker("", selection: selectedMark) {
                ForEach (0...questionMarks[0], id: \.self) { number in
                    
                    Text("\(number)").tag("\(number)")
                }
            }
            .onChange(of: calculatorViewModel.paper1Q1Marks) {
                calculatorViewModel.calculateTotalMarksPaper1()
                calculatorViewModel.calculateTotalMarks()
                calculatorViewModel.calculateGrade(year: studentDetailsSectionViewModel.selectedYear)
                questionMarks = calculatorViewModel.getCSPaper1TotalMarks()
            }
        }
    }
}

#Preview {
    QuestionMarksPickerView(selectedMark: .constant(""))
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}

