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
        Label(studentDetailsSectionViewModel.getLableText(textFieldName: textFieldName),
        systemImage: studentDetailsSectionViewModel.getLabelImage(labelImageName: textFieldName))
            .font(studentDetailsSectionViewModel.getContentFont())
    }
}

