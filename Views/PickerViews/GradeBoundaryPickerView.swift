//
//  CustomGradeBoundariesPickerViews.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct GradeBoundaryPickerView: View {
    
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(GradeBoundaryViewerViewModel.self) var boundaryViewerViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    @Bindable var selectedGradeBoundary: SubjectAndBoundaryPickerViewModel
    
    var body: some View {
        VStack {
            if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth{
                Text(subjectAndBoundaryPickerViewModel.boundaryText)
                    .font(Fonts.extraSmall.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            } else if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.boundaryText)
                    .font(Fonts.standard.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            } else if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.boundaryText)
                    .font(Fonts.large.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            } else if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.extraLarge.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.boundaryText)
                    .font(Fonts.extraLarge.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            }

            Picker("", selection: $calculatorViewModel.selectedGradeBoundaryYear) {
                ForEach(SubjectAndBoundaryPickerModel.init().gradeBoundaryYears, id: \.self) { years in
                    Text(years)
                }
            }
            .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            .accessibilityLabel("Select a grade boundary")
            .accessibilityAddTraits(.isHeader)

            SeperatorView()
        }
    }
}

