//
//  GradeBoundariesView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/04/2025.
//

import SwiftUI

struct GradeBoundariesView: View {
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(GradeBoundaryViewerViewModel.self) var gradeBoundaryViewModel
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
        .environmentObject(GradeCalculatorViewModel())
        .environment(AppWideViewModel())
        .environment(GradeBoundaryViewerViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())
}
