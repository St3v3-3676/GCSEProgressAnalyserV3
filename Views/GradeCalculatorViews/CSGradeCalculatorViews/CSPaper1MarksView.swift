//
//  CSPaper1MarksView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 23/03/2025.
//

import SwiftUI

struct CSPaper1MarksView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel

    var body: some View {
        VStack {
            let width = PhoneScreenWidths.current().screenWidth
            
            Text("Enter Paper 1 Marks:")
                .frame(maxWidth: width * 0.6)
                .font(.title2)
                .fontWeight(.semibold)
                .background(RoundedRectangle(cornerRadius: 8).fill(Colours.blueScheme.colour))
        }
        .onChange(of: [calculatorViewModel.paper1Q1Marks, calculatorViewModel.paper1Q2Marks, calculatorViewModel.paper1Q3Marks, calculatorViewModel.paper1Q4Marks, calculatorViewModel.paper1Q5Marks]) {
            calculatorViewModel.calculateTotalMarksPaper1()
        }
    }
}

#Preview {
    CSPaper1MarksView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
