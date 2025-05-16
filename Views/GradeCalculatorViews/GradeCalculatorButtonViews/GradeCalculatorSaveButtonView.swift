//
//  GradeCalculatorSaveButtonView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 04/04/2025.
//

import SwiftUI
import SwiftData

struct GradeCalculatorSaveButtonView: View {
    @EnvironmentObject private var calculatorViewModel: GradeCalculatorViewModel
    @Environment(\.modelContext) private var context
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @State var duplicateAlert: Bool = false
    @State var saved: Bool = false
    
    @Query private var studentResults: [ResultsData]
    
    var body: some View {
        Text("Click to save student result")
        Button("Save") {
            if studentResults.contains(where: { $0.studentForename == studentDetailsSectionViewModel.enteredFirstname && $0.studentSurname == studentDetailsSectionViewModel.enteredSurname && $0.examYear == StudentDetailsSectionViewModel.init().selectedYear && $0.examMonth == StudentDetailsSectionViewModel.init().selectedMonth}) {
                
                
                duplicateAlert = true
                
            } else {
                context.insert(calculatorViewModel.insertStudentData())
                saved = true
                
            }
            
        }
        .alert("Student record for this exam already exists!", isPresented: $duplicateAlert) {
            Button("OK", role: .cancel) {}
        }
        .alert("Student Result Saved", isPresented: $saved) {
            Button("OK", role: .cancel) {}
        }
        .buttonStyle(.bordered).buttonBorderShape(.capsule).font(.title)
        .tint(.red)
        .foregroundStyle(.black)
        .disabled(
            studentDetailsSectionViewModel.enteredSurname.isEmpty ||
            studentDetailsSectionViewModel.enteredFirstname.isEmpty ||
            studentDetailsSectionViewModel.enteredClassName.isEmpty ||
            studentDetailsSectionViewModel.enteredTargetGrade.isEmpty ||
            calculatorViewModel.paper1Q1Marks.isEmpty ||
            calculatorViewModel.paper1Q2Marks.isEmpty ||
            calculatorViewModel.paper1Q3Marks.isEmpty ||
            calculatorViewModel.paper1Q4Marks.isEmpty ||
            calculatorViewModel.paper1Q5Marks.isEmpty ||
            calculatorViewModel.paper2Q1Marks.isEmpty ||
            calculatorViewModel.paper2Q2Marks.isEmpty ||
            calculatorViewModel.paper2Q3Marks.isEmpty ||
            calculatorViewModel.paper2Q4Marks.isEmpty ||
            calculatorViewModel.paper2Q5Marks.isEmpty ||
            calculatorViewModel.paper2Q6Marks.isEmpty)
    }
}

#Preview {
    GradeCalculatorSaveButtonView()
        .environmentObject(GradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
}
