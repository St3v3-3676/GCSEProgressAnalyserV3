//
//  CalculatorInstructionsNavigationView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 06/04/2025.
//

import SwiftUI

struct CalculatorInstructionsNavigationView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    let width = UIScreen.main.bounds.width
 
    var body: some View {
        NavigationStack {
            ZStack {
                Text("Click for instructions")
                    .font(.caption)
                    .padding(.top, 35)

                NavigationLink(destination: GradeCalculatorInstructionsView()) {
                    Image("custom.questionmark.circle.light")
                }
            }
        }
    }
}


#Preview {
    CalculatorInstructionsNavigationView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
