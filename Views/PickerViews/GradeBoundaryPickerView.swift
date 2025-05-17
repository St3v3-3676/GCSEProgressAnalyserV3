//
//  CustomGradeBoundariesPickerViews.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct GradeBoundaryPickerView: View {
    
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    @Bindable var selectedGradeBoundary: SubjectAndBoundaryPickerViewModel
    
    var body: some View {
        VStack {
            if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth{
                Text(AppStringsModel.init().boundaryText)
                    .font(Fonts.extraSmall.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
                Text(AppStringsModel.init().boundaryText)
                    .font(Fonts.standard.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
                Text(AppStringsModel.init().boundaryText)
                    .font(Fonts.large.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraLarge.screenWidth {
                Text(AppStringsModel.init().boundaryText)
                    .font(Fonts.extraLarge.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            }

            Picker("", selection: $calculatorViewModel.selectedGradeBoundaryYear) {
                ForEach(AppStringsModel.init().gradeBoundaryYears, id: \.self) { years in
                    Text(years)
                }
            }
            .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            .accessibilityLabel("Select a grade boundary")
            .accessibilityAddTraits(.isHeader)

            SeperatorView()
        }
    }
}

