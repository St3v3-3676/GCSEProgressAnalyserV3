//
//  ComputerSciencFormView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 19/02/2025.
//
import SwiftUI


struct CalculatorView: View {
    
    let opacityValue = Double(0.6)
    let paddingValue = CGFloat(10)
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    var body: some View {
        NavigationStack {
            ScrollView {
                DynamicTitleTextView(text: "Grade Calculator")
                    .padding(.bottom, paddingValue)
                
                CalculatorInstructionsNavigationView()
                    .padding(.bottom, paddingValue)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.black)
                
                SubjectPickerView()
                    .padding(.bottom, paddingValue)
                
                GradeBoundaryPickerView()
                
                Divider()
                    .frame(height: 2)
                    .background(Color.black)
                
                CalculatorStudentDetailsView(studentDetails: studentDetailsSectionViewModel)
                    .padding(.bottom, paddingValue)
                
                Divider()
                    .frame(height: 2)
                    .background(Color.black)
                    .padding(.bottom, paddingValue)
                
                StudentExamDateView()
                    .padding(.bottom, paddingValue)
                
                if calculatorViewModel.selectedSubject == "CS" {
                    CSCalculatorMarksFormView()
                }
            }
            .background( LinearGradient(gradient: Gradient(colors: [Color.newBackgroundColourGradientStart.opacity(opacityValue), Color.newBackgroundColorGradientEnd.opacity(opacityValue)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
            .onChange(of: [calculatorViewModel.paper1Q1Marks, calculatorViewModel.paper1Q2Marks, calculatorViewModel.paper1Q3Marks, calculatorViewModel.paper1Q4Marks, calculatorViewModel.paper1Q5Marks, calculatorViewModel.paper2Q1Marks, calculatorViewModel.paper2Q2Marks, calculatorViewModel.paper2Q3Marks, calculatorViewModel.paper2Q4Marks, calculatorViewModel.paper2Q5Marks, calculatorViewModel.paper2Q6Marks]) {
                
                calculatorViewModel.calculateTotalMarks()
                calculatorViewModel.calculateGrade(year: calculatorViewModel.selectedGradeBoundaryYear)
            }
        }
    }
}


#Preview {
    CalculatorView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
    

}
