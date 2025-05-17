//
//  CSPaper1MarksView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 23/03/2025.
//

import SwiftUI

struct CSPaper1MarksView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel

    var body: some View {
        GeometryReader { geometry in
            TextAndRoundedRectangleView(
                rectangleColour:Colours.blueScheme.colour,
                rectangleType: "large",
                text: CSAppStringsModel.init().titleTextCSPaper1, textType: "title")
                .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .global).minY)
            
//            QuestionNumberGreenRectangleView(
//                questionLabel: calculatorMarksSectionViewModel.questionQ1Label,
//                questionNumber: calculatorMarksSectionViewModel.questionNumbers[0],
//                paperNumber: calculatorMarksSectionViewModel.paperNumbers[0])
//            
//            .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .global).minY + 60)
//            
//            QuestionNumberGreenRectangleView(
//                questionLabel: calculatorMarksSectionViewModel.questionQ2Label,
//                questionNumber: calculatorMarksSectionViewModel.questionNumbers[1],
//                paperNumber: calculatorMarksSectionViewModel.paperNumbers[0])
//            
//            .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .global).minY + 105)
//            
//            QuestionNumberGreenRectangleView(
//                questionLabel: calculatorMarksSectionViewModel.questionQ3Label,
//                questionNumber: calculatorMarksSectionViewModel.questionNumbers[2],
//                paperNumber: calculatorMarksSectionViewModel.paperNumbers[0])
//            .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .global).minY + 150)
//            
//            QuestionNumberGreenRectangleView(
//                questionLabel: calculatorMarksSectionViewModel.questionQ4Label,
//                questionNumber: calculatorMarksSectionViewModel.questionNumbers[3],
//                paperNumber: calculatorMarksSectionViewModel.paperNumbers[0])
//            .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .global).minY + 195)
//            
//            QuestionNumberGreenRectangleView(
//                questionLabel: calculatorMarksSectionViewModel.questionQ5Label,
//                questionNumber: calculatorMarksSectionViewModel.questionNumbers[4],
//                paperNumber: calculatorMarksSectionViewModel.paperNumbers[0])
//            .position(x: geometry.frame(in: .global).midX, y: geometry.frame(in: .global).minY + 240)
//            
//            HStack {
//                TextAndRoundedRectangleView(
//                    rectangleColour: calculatorMarksSectionViewModel.selectedMarkRectangleColor,
//                    text: calculatorMarksSectionViewModel.totalMarksP1Label,
//                    widthAdjustment: 1.1,
//                    font: calculatorMarksSectionViewModel.questionNumberFont)
//                
//                TextAndRoundedRectangleView(
//                    rectangleColour: calculatorMarksSectionViewModel.selectedMarkRectangleColor,
//                    text: "\(calculatorViewModel.totalMarksP1)",
//                    widthAdjustment: 5,
//                    font: calculatorMarksSectionViewModel.titleFont)
//            }
        }
        
        
        
                

            

            
    



                

                .onChange(of: [calculatorViewModel.paper1Q1Marks, calculatorViewModel.paper1Q2Marks, calculatorViewModel.paper1Q3Marks, calculatorViewModel.paper1Q4Marks, calculatorViewModel.paper1Q5Marks]) {
                    calculatorViewModel.calculateTotalMarksPaper1()
  
            
 
        
        
        }
        
        
    }
    
}

#Preview {
    CSPaper1MarksView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
}
