//
//  GradeBoundariesView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/04/2025.
//

import SwiftUI

struct GradeBoundariesView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                GradeBoundariesTemplateView(selectedSubject: SubjectAndBoundaryPickerViewModel(), selectedBoundaryYear: SubjectAndBoundaryPickerViewModel())
            }
        }
    }
}
//Extra small screen preview
#Preview {
    GradeBoundariesView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())
}
