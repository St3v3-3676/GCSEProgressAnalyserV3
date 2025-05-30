//
//  textFieldLabel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 23/04/2025.
//

import SwiftUI

struct GradeCalculatorStudentDetailsTextFieldLabel: View {
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    let textFieldName: String
    var body: some View {
        GeometryReader { geometry in
            let appStrings = AppStringUtilities(studentDetailsSection: studentDetailsSectionViewModel)
            HStack {
                Text(appStrings.getLableText(textFieldName: textFieldName))
                    .font(.title3)

                Image(systemName: appStrings.getLabelImage(labelImageName: textFieldName))
            }
        }
        .frame(height: 20)
    }
}

