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
    
    let titlePaddingValue = CGFloat(80)
    
    var body: some View {
        NavigationStack {
            HStack {
                

                NavigationLink(destination: GradeCalculatorInstructionsView()) {
                    
                    Text("Click for instructions")
                        .font(.title3)
                        .foregroundStyle(.black)
                    
                    Image(systemName: "questionmark.square.fill")
                        .font(.title3)
                        
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
