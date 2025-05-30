//
//  GradeBoundariesView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 15/04/2025.
//

import SwiftUI

struct GradeBoundariesView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    var body: some View {
        let width = PhoneScreenWidths.current().screenWidth
        VStack(alignment: .center, spacing: 20) {
            AppTitleView(text: "Grade Boundaries Viewer")
                .frame(height: 70)
            
            SubjectPickerView()
                .frame(height: 40)
            
            GradeBoundaryPickerView()
            
            GroupBox(label: Label("\(calculatorViewModel.selectedSubject)" + " " + "\(calculatorViewModel.selectedGradeBoundaryYear)", systemImage: "arrow.up.arrow.down")
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.bottom, 5)
                .font(.title2)
                .fontWeight(.bold)
                .background(RoundedRectangle(cornerRadius: 10).fill(Colours.blueScheme.colour))) {
                
                GradeBoundariesGridView()
            }
                .frame(maxWidth: width * 0.9)
            
        }
        
        .onChange(of: calculatorViewModel.selectedGradeBoundaryYear) {
            calculatorViewModel.getGradeBoundaries()
        }
    }
}

#Preview {
    GradeBoundariesView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
