//
//  ExamDataPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 28/04/2025.
//

import SwiftUI

struct ExamYearPickerView: View {
    @Bindable var studentSectionViewModel = StudentDetailsSectionViewModel()
        
    var body: some View {

            VStack {
                Text("Select a year exam was sat:")
                    .font(.title2)
                    .padding(.bottom, -10)
                
                Picker("", selection: $studentSectionViewModel.selectedYear) {
                    ForEach(AppStringsModel.init().gradeBoundaryYears, id: \.self) { years in
                        Text(years)
                    }
                }
                
                Text("Selected year : \(studentSectionViewModel.selectedYear)")
                    .foregroundStyle(.red)
                    .fontWeight(.semibold)
            }
            .padding(.bottom, 15)
        }
    }


#Preview {
    ExamYearPickerView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
