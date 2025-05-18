//
//  CustomSubjectsPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct SubjectPickerView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    fileprivate func extractedFunc() -> Picker<Text, String, ForEach<[String], String, Text>> {
        return Picker("", selection: $calculatorViewModel.selectedSubject) {
            ForEach(AppStringsModel.init().subjects, id: \.self) { subject in
                Text(subject)
            }
        }
    }
    
    var body: some View {
        VStack {
            if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
                Text(AppStringsModel.init().subjectText)
                    .font(Fonts.extraSmall.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
                Text(AppStringsModel.init().subjectText)
                    .font(Fonts.standard.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
                Text(AppStringsModel.init().subjectText)
                    .font(Fonts.large.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraLarge.screenWidth {
                Text(AppStringsModel.init().subjectText)
                    .font(Fonts.extraLarge.contentFont)
                    .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
            }
            
            
            extractedFunc()
            .tint(Color.accentColor)
            .accessibilityLabel("Select a subject")
            .accessibilityAddTraits(.isHeader)
        }
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
    }
}
