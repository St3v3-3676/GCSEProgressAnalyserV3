//
//  StudentExamDateView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 25/04/2025.
//

import SwiftUI

struct StudentExamDateView: View {
    @Bindable var studentSectionViewModel = StudentDetailsSectionViewModel()
    
    var body: some View {
        VStack {
            ExamYearPickerView()
            
            ExamMonthPickerView()

            SeperatorView()
        }
    }
}

#Preview {
    StudentExamDateView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
