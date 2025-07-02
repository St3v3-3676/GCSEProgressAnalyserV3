//
//  ComputerSciencePaper2FormView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 25/02/2025.
//

import SwiftUI

import SwiftUI

struct CSPaper2MarksView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsViewModel
    
    let paddingValue = CGFloat(20)

    var body: some View {
        var totalMarks = calculatorViewModel.getPaper2TotalMarks()
        
        VStack {
            DynamicTitleTextView(text: "Paper 2 Marks")
                .padding(.bottom, paddingValue)
            
            Text("Select the total marks for each question.")
                .font(.headline)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel1.questionLabelText, totalMark: totalMarks[0], selection: $calculatorViewModel.paper2Q1Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel2.questionLabelText, totalMark: totalMarks[1], selection: $calculatorViewModel.paper2Q2Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel3.questionLabelText, totalMark: totalMarks[2], selection: $calculatorViewModel.paper2Q3Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel4.questionLabelText, totalMark: totalMarks[3], selection: $calculatorViewModel.paper2Q4Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel5.questionLabelText, totalMark: totalMarks[4], selection: $calculatorViewModel.paper2Q5Marks)
            
            HStack {
                Text("Total Marks P2:")
                    .font(.title2)
                Text("\(calculatorViewModel.totalMarksP2)")
                    .font(.title2)
                    .foregroundStyle(.appFontColours)
            }
            .padding(.top, paddingValue)
            
            Divider()
                .frame(height: 2)
                .background(Color.black)
                
        }
        .onChange(of: [calculatorViewModel.paper2Q1Marks, calculatorViewModel.paper2Q2Marks, calculatorViewModel.paper2Q3Marks, calculatorViewModel.paper2Q4Marks, calculatorViewModel.paper2Q5Marks, calculatorViewModel.paper2Q6Marks]) {
            calculatorViewModel.calculateTotalMarksPaper2()
            
        }
        .onChange(of: studentDetailsViewModel.selectedYear) {
            totalMarks = calculatorViewModel.getPaper2TotalMarks()
        }
    }
}

#Preview {
    CSPaper1MarksView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
