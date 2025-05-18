//
//  GradeCalculatorInstructionsView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 06/04/2025.
//

import SwiftUI

struct GradeCalculatorInstructionsView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    var body: some View {
        VStack {
            AppTitleView(text: "Grade Calculator Instructions", textType: "title")
                .position(x: ScreenDimensionsUtilitites.init().getScreenWidth() / 2, y: ScreenDimensionsUtilitites.init().getScreenHeight() / 13)
            
            VStack(alignment: .leading) {
                ForEach(CSAppStringsModel.init().getAllInstructions(), id: \.self) { instruction in
                    InstructionTextView(instruction: instruction)
                }
            }
            .position(x: ScreenDimensionsUtilitites.init().getScreenWidth() / 2 ,y: ScreenDimensionsUtilitites.init().getScreenHeight() * -0.1)
        }
        .background(Colours.blueScheme.colour.opacity(0.6))
    }
}

#Preview {
    GradeCalculatorInstructionsView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())
        .environment(StudentDetailsSectionViewModel())
}
