//
//  QuestionNumberGreenRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 29/04/2025.
//

import SwiftUI

struct QuestionNumberGreenRectangleView: View {
    @EnvironmentObject var calculatorViewModel:  CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    let padding: Edge.Set = .leading, spacing: CGFloat = 45
    let questionNumberRectangleAdjustment: CGFloat = 1.3
    
    var questionLabel: String
    var questionNumber: Int
    var paperNumber: Int
    var body: some View  {
//        HStack {
//            
//            TextAndRoundedRectangleView(
//                rectangleColour: Colours.greenScheme.colour,
//                text: questionLabel)
//            
//            if questionNumber == CSQuestionNumbers.q1.questionNumber && paperNumber == CSpaperNumbers.paper1.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper1Q1Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q2.questionNumber && paperNumber == CSpaperNumbers.paper1.paperNumber {
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper1Q2Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q3.questionNumber && paperNumber == CSpaperNumbers.paper1.paperNumber {
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper1Q3Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q4.questionNumber && paperNumber == CSpaperNumbers.paper1.paperNumber {
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper1Q4Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q5.questionNumber && paperNumber == CSpaperNumbers.paper1.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper1Q5Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q1.questionNumber && paperNumber == CSpaperNumbers.paper2.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper2Q1Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q2.questionNumber && paperNumber == CSpaperNumbers.paper2.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper2Q2Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q3.questionNumber && paperNumber == CSpaperNumbers.paper2.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper2Q3Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q4.questionNumber && paperNumber == CSpaperNumbers.paper2.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper2Q4Marks)
//                    .padding(padding,spacing)
//                
//            } else if questionNumber == CSQuestionNumbers.q5.questionNumber && paperNumber == CSpaperNumbers.paper2.paperNumber{
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper2Q5Marks)
//                    .padding(padding,spacing)
//                
//            } else {
//                
//                QuestionMarksPickerView(selectedMark: $calculatorViewModel.paper2Q6Marks)
//                    .padding(padding,spacing)
//            }
//            
//            TextAndRoundedRectangleView(
//                rectangleColour: Colours.blueScheme.colour,
//                text: "\(calculatorViewModel.paper1Q1Marks)",
//                yPositionMultiplier: 0.1, rectangleWidthMultiplier: 1)
//            .padding(.leading, -50)
//        }
//        .frame(maxHeight: 45)
    }
}
        


#Preview {
    QuestionNumberGreenRectangleView(questionLabel: "Enter Q1 Marks:", questionNumber: 2, paperNumber: 1)
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
