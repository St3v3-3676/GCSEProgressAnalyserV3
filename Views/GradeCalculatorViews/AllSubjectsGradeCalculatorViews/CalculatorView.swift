//
//  ComputerSciencFormView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 19/02/2025.
//
import SwiftUI


struct CalculatorView: View {
    var body: some View {

        NavigationStack {
            ScrollView {
                VStack(alignment: .center) {
                    AppTitleView(text: "Grade Calculator")
                }
                .frame(height: 50)
                .padding(.top, 20)
                
                VStack(alignment: .center, spacing: 20) {
                    CalculatorInstructionsNavigationView()
        
                    SubjectPickerView()
                    
                    GradeBoundaryPickerView()
                    
                    CalculatorStudentDetailsView()
                    
                    StudentExamDateView()
                    
                    CSPaper1MarksView()
                    
                }
            }

                    //                if calculatorViewModel.selectedSubject == "Computer Science" {
                    //                    VStack {
                    //                        CSPaper1MarksView()
                    //                        //CSPaper2MarksView()
                    //
                    //
                    //                    }
                    //                    .onAppear() {
                    //                        //calculatorViewModel.setButtonText(textString: "Save")
                    //                    }
                    //
                    //                }
                
            
        }
        
    }
    
}


#Preview {
    CalculatorView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
    

}
