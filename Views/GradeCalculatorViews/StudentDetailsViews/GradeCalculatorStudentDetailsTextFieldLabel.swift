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
            HStack {
                Text(textFieldName)
                    .font(.title3)
                
                if textFieldName == "Surname" {
                    Image(systemName: StudentDetailsImageNames.surname.imageName)
                        .foregroundStyle(Color.purple)
                } else if textFieldName == "First name" {
                    Image(systemName: StudentDetailsImageNames.firstname.imageName)
                        .foregroundStyle(Color.purple)
                } else if textFieldName == "Class name" {
                    Image(systemName: StudentDetailsImageNames.classname.imageName)
                        .foregroundStyle(Color.purple)
                    
                } else {
                    Image(systemName: StudentDetailsImageNames.targetgrade.imageName)
                        .foregroundStyle(Color.purple)
            }
        }
    }
}

#Preview {
    GradeCalculatorStudentDetailsTextFieldLabel(textFieldName: "First name")
        .environment(StudentDetailsSectionViewModel())
}




