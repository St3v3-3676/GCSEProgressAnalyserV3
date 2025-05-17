//
//  ComputerSciencFormView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 19/02/2025.
//
import SwiftUI


struct CalculatorView: View {
    
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    var body: some View {
        let topPadding: CGFloat = -25
        let instructionViewPadding: CGFloat = 5
        
        NavigationStack {
            ScrollView {
                VStack {
                    AppTitleView(text: calculatorViewModel.titleText, textType: "title")
                    
                    CalculatorInstructionsNavigationView()
                        .padding(.top, instructionViewPadding)
                }
//                
                VStack {
                    SubjectPickerView()
                    
                    GradeBoundaryPickerView(selectedGradeBoundary: SubjectAndBoundaryPickerViewModel())
                        
                    
                    CalculatorStudentDetailsView()
                    StudentExamDateView()
                    
                }
                .padding(.top, topPadding)
                
                if calculatorViewModel.selectedSubject == "Computer Science" {
                    VStack {
                        CSPaper1MarksView()
                            .padding(.bottom, topPadding)
                        //CSPaper2MarksView()
                    }
                }
                

//                        
//                        
//                        VStack {
//
//                        }
//                        .offset(x: -10, y: -130)
//                    }
//                }
//                .offset(x: 10, y: -240)
//                
//                
//                VStack {
//                    GradeCalculatorStudentResultView()
//                }
//                .offset(y: -530)
//                
//                VStack {
//                    GradeCalculatorSaveButtonView()
//                        .offset(y: 30)
//                }
//                .offset(y: -530)
//                
//                VStack {
//                    GradeCalculatorResetButtonView()
//                }
//                .offset(y: -500)
//                
//            }
//            .scrollDismissesKeyboard(.immediately)
            
            }
            .onAppear() {
                //calculatorViewModel.setButtonText(textString: "Save")
            }
            
        }
        
    }
    
}

//Extra small screen preview
#Preview {
    CalculatorView()
        .environment(SubjectAndBoundaryPickerViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environmentObject(CSGradeCalculatorViewModel())

}
