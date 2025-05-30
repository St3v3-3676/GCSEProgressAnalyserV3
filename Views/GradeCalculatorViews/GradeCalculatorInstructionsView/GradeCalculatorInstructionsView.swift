//
//  GradeCalculatorInstructionsView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 06/04/2025.
//

import SwiftUI

struct GradeCalculatorInstructionsView: View {
    
    let opacity = 0.3
    let horizontalSpacing: CGFloat = 5
    let verticalSpacing: CGFloat = 20
    let horizontalPadding: CGFloat = 15
    let verticalPadding: CGFloat = 5
    let vStackSpacing: CGFloat = 10
    let instructions = CSAppStringsModel().getAllInstructions()

    var body: some View {
        
        VStack {
            AppTitleView(text: "Instructions")
            
            VStack(alignment: .center, spacing: vStackSpacing) {
                ForEach(Array(instructions.enumerated()), id: \.1) { index, instruction in
                    InstructionRow(
                        text: instruction,
                        isNote: instruction.contains("Note:"),
                        opacity: opacity,
                        horizontalPadding: horizontalPadding,
                        verticalPadding: verticalPadding,
                        horizontalSpacing: horizontalSpacing,
                        verticalSpacing: verticalSpacing
                    )
                    .transition(.opacity.combined(with: .slide))
                    .animation(.easeInOut(duration: 0.3).delay(Double(index) * 0.1), value: instruction)
                }
            }
            
        }
    }
}

#Preview {
    GradeCalculatorInstructionsView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}


