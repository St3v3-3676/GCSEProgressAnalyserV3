//
//  CustomSubjectsPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct SubjectPickerView: View {
    @EnvironmentObject var calculatorViewModel: GradeCalculatorViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    var body: some View {
        VStack {
            if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.subjectText)
                    .font(Fonts.extraSmall.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            } else if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.subjectText)
                    .font(Fonts.standard.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            } else if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.large.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.subjectText)
                    .font(Fonts.large.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            } else if appWideViewModel.getScreenWidth() <= PhoneScreenWidths.extraLarge.screenWidth {
                Text(subjectAndBoundaryPickerViewModel.subjectText)
                    .font(Fonts.extraLarge.contentFont)
                    .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
            }
            
            
            Picker("", selection: $calculatorViewModel.selectedSubject) {
                ForEach(SubjectAndBoundaryPickerModel.init().subjects, id: \.self) { subject in
                    Text(subject)
                }
            }
            .accessibilityLabel("Select a subject")
            .accessibilityAddTraits(.isHeader)
        }
        .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue)
    }
}
