//
//  GradeBoundariesViewerSmallScreenView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 19/04/2025.
//
    
import SwiftUI

struct GradeBoundariesTemplateView: View {
    
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(GradeBoundaryViewerViewModel.self) var gradeBoundaryViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    @Bindable var selectedSubject: SubjectAndBoundaryPickerViewModel
    @Bindable var selectedBoundaryYear: SubjectAndBoundaryPickerViewModel
    
    var body: some View {
            VStack {
                AppTitleView(text: "Grade Boundaries Viewer", textType: "title")
                    
                SubjectPickerView()
                
                GradeBoundaryPickerView(selectedGradeBoundary: SubjectAndBoundaryPickerViewModel())
                
                TextAndRoundedRectangleView(
                    rectangleColour: Colours.blueScheme.colour,
                    rectangleType: "medium",
                    text: calculatorViewModel.selectedSubject,
                    textType: "title",
                    )
                
                TextAndRoundedRectangleView(
                    rectangleColour: Colours.greenScheme.colour,
                    rectangleType: "small", text: calculatorViewModel.selectedGradeBoundaryYear,
                    textType:
                        "content")
                
                HStack {
                    GradeBoundariesRectangleView(
                        font: gradeBoundaryViewModel.getContentFont(),
                        rectangleColour: Colours.blueScheme.colour,
                        textType: "content",
                        isKey: true)
                    
                    GradeBoundariesRectangleView(
                        font: gradeBoundaryViewModel.getContentFont(),
                        rectangleColour: Colours.greenScheme.colour,
                        textType: "content",
                        isKey: false)
                }
            }
            .onChange(of: calculatorViewModel.selectedGradeBoundaryYear) {
                calculatorViewModel.getGradeBoundaries()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding()
        }
    }
#Preview {
    GradeBoundariesView()
        .environmentObject(GradeCalculatorViewModel())
        .environment(AppWideViewModel())
        .environment(GradeBoundaryViewerViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())
  
}

