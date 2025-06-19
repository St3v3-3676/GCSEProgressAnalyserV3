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
            HStack {
                Text(textFieldName)
                    .font(.title3)

                Image(systemName: "house")
            }
        }
        .frame(height: 20)
    }
}




