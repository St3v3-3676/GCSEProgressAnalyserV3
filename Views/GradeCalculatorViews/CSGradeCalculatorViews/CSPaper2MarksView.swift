//
//  ComputerSciencePaper2FormView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 25/02/2025.
//

import SwiftUI

//struct CSPaper2MarksView: View {
//    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
//    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
//    @Environment(AppWideViewModel.self) var appWideViewModel
//    @Environment(CalculatorMarksSectionViewModel.self) var calculatorMarksSectionViewModel
//    
//    var body: some View {
//        let screenWidth = appWideViewModel.getScreenWidth()
//        let screenHeight = appWideViewModel.getScreenHeight()
//        
//        VStack {
//            TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + -0.2, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "Enter Paper 2 Marks:", font: appWideViewModel.titleFont)
//            
//            HStack {
//                QuestionNumberGreenRectangleView(questionLabel: "Enter Q1 Marks", questionNumber: 1, paperNumber: 2)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.paper2Q1Marks)", font: appWideViewModel.titleFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -45)
//            
//            HStack {
//                
//                QuestionNumberGreenRectangleView(questionLabel: "Enter Q2 Marks", questionNumber: 2, paperNumber: 2)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.paper2Q2Marks)", font: appWideViewModel.titleFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -45)
//            
//            HStack {
//                QuestionNumberGreenRectangleView(questionLabel: "Enter Q3 Marks", questionNumber: 3, paperNumber: 2)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.paper2Q3Marks)", font: appWideViewModel.titleFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -45)
//            
//            HStack {
//                QuestionNumberGreenRectangleView(questionLabel: "Enter Q4 Marks", questionNumber: 4, paperNumber: 2)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.paper2Q4Marks)", font: appWideViewModel.titleFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -45)
//            
//            HStack {
//                QuestionNumberGreenRectangleView(questionLabel: "Enter Q5 Marks", questionNumber: 5, paperNumber: 2)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.paper2Q5Marks)", font: appWideViewModel.titleFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -45)
//            
//            HStack {
//                QuestionNumberGreenRectangleView(questionLabel: "Enter Q6 Marks", questionNumber: 6, paperNumber: 2)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.paper2Q6Marks)", font: appWideViewModel.titleFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -45)
//            
//            HStack {
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 0.1, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "Paper 2 Total Marks", font: appWideViewModel.viewContentFont)
//                    .padding(.leading, -50)
//                    .padding(.bottom, 50)
//                
//                TextAndRoundedRectangleView(rectangleColour: appWideViewModel.getColour(colour: .blue), rectangleWidth: calculatorViewModel.horizontalRectangleWidthSmallScreen + 5, rectangleHeight: calculatorViewModel.horizontalRectangleHeight, text: "\(calculatorViewModel.totalMarksP2)", font: appWideViewModel.viewContentFont)
//                    .padding(.trailing, -50)
//                    .padding(.bottom, 50)
//            }
//            .padding(.bottom, -35)
// 
//            
//            SeperatorView(
//                width: screenWidth / appWideViewModel.sectionSeperatorWidthAndHeight(widthAndHeight: .width),
//                height: screenHeight * appWideViewModel.sectionSeperatorWidthAndHeight(widthAndHeight: .height))
//            
//            
//        }
//        .onChange(of: [calculatorViewModel.paper1Q1Marks, calculatorViewModel.paper1Q2Marks, calculatorViewModel.paper1Q3Marks, calculatorViewModel.paper1Q4Marks, calculatorViewModel.paper1Q5Marks, calculatorViewModel.paper2Q1Marks, calculatorViewModel.paper2Q2Marks, calculatorViewModel.paper2Q3Marks, calculatorViewModel.paper2Q4Marks, calculatorViewModel.paper2Q5Marks, calculatorViewModel.paper2Q6Marks]) {
//            
//            calculatorViewModel.calculateTotalMarksPaper1()
//            calculatorViewModel.calculateTotalMarksPaper2()
//            
//        }
//    }
//}

//#Preview {
//    CSPaper2MarksView()
//        .environmentObject(GradeCalculatorViewModel())
//        .environment(StudentDetailsSectionViewModel())
//        .environment(AppWideViewModel())
//        .environment(GradeBoundaryViewModel())
//        .environment(CalculatorMarksSectionViewModel())
//}
