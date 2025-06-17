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
        HStack {
            Text(questionText)
                .frame(maxWidth: width * 0.3)
                .font(.title2)
                .background(
                    RoundedRectangle(cornerRadius: 5)
                        .fill(Colours.blueScheme.colour))  
        }

    }
}

#Preview {
    QuestionNumberAndMarksView(questionText: "Q1 Mark:")
}
