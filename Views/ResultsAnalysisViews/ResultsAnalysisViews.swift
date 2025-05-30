//
//  ResultsAnalysisViews.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//

import SwiftUI

struct ResultsAnalysisViews: View {
    var body: some View {
        Text("Results Analysis View")
    }
}

#Preview {
    ResultsAnalysisViews()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
