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
        Label(AppStringUtilities.init().getLableText(textFieldName: textFieldName),
        systemImage: AppStringUtilities.init().getLabelImage(labelImageName: textFieldName))
            .font(FontUtilities.init().getContentFont())
    }
}

