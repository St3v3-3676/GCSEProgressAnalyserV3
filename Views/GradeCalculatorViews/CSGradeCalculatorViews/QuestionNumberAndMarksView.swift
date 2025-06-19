//
//  QuestionTextBoxView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 02/06/2025.
//

import SwiftUI

struct QuestionNumberAndMarksView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    let questionText: String

    
    var body: some View {
        let width = UIScreen.main.bounds.width
        VStack {
            ForEach(QuestionLabelStrings.allCases, id: \.self) { questionLabelString in
                
                HStack {
                    Text(questionLabelString.questionLabelText)
                        .frame(maxWidth: width * 0.6)
                        .font(.title2)
                        .background(
                            RoundedRectangle(cornerRadius: 5)
                                .fill(Colours.blueScheme.colour))
                    
                    QuestionMarksPickerView()
                }
                .padding(.bottom, 5)
                
                
                
            }
              
        }

    }
}

#Preview {
    QuestionNumberAndMarksView(questionText: "Q1 Mark:")
        .environment(StudentDetailsSectionViewModel())
        .environmentObject(CSGradeCalculatorViewModel())
}
