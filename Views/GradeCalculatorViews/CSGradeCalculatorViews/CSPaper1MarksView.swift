//
//  CSPaper1MarksView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 23/03/2025.
//

import SwiftUI

struct CSPaper1MarksView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsViewModel
    
    let paddingValue = CGFloat(20)

    var body: some View {
        var totalMarks = calculatorViewModel.getCSPaper1TotalMarks()
        
        VStack {
            DynamicTitleTextView(text: "Paper 1 Marks")
                .padding(.bottom, paddingValue)
            
            Text("Select the total marks for each question.")
                .font(.headline)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel1.questionLabelText, totalMark: totalMarks[0], selection: $calculatorViewModel.paper1Q1Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel2.questionLabelText, totalMark: totalMarks[1], selection: $calculatorViewModel.paper1Q2Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel3.questionLabelText, totalMark: totalMarks[2], selection: $calculatorViewModel.paper1Q3Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel4.questionLabelText, totalMark: totalMarks[3], selection: $calculatorViewModel.paper1Q4Marks)
            
            QuestionMarkRow(questionLabel: QuestionLabelStrings.questionLabel5.questionLabelText, totalMark: totalMarks[4], selection: $calculatorViewModel.paper1Q5Marks)
            
            HStack {
                Text("Total Marks P1:")
                    .font(.title2)
                Text("\(calculatorViewModel.totalMarksP1)")
                    .font(.title2)
                    .foregroundStyle(.appFontColours)
            }
            .padding(.top, paddingValue)
            
            Divider()
                .frame(height: 2)
                .background(Color.black)
                
        }
        .onChange(of: [calculatorViewModel.paper1Q1Marks, calculatorViewModel.paper1Q2Marks, calculatorViewModel.paper1Q3Marks, calculatorViewModel.paper1Q4Marks, calculatorViewModel.paper1Q5Marks]) {
            calculatorViewModel.calculateTotalMarksPaper1()
        }
        .onChange(of: studentDetailsViewModel.selectedYear) {
            totalMarks = calculatorViewModel.getCSPaper1TotalMarks()
        }
    }
}

struct QuestionMarkRow: View {
    let questionLabel: String
    let totalMark: Int
    
    @Binding var selection: String
    
    var body: some View {
        HStack {
            Text(questionLabel)
                .font(.title3)
                .lineLimit(nil)
                .multilineTextAlignment(.leading)
 
            Picker("", selection: $selection) {
                ForEach(0...totalMark, id: \.self) { mark in
                    Text("\(mark)")
                        .lineLimit(nil)
                        .multilineTextAlignment(.leading)
                        .tag("\(mark)")
                }
            }
        }
    }
    
}

#Preview {
    CSPaper1MarksView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
