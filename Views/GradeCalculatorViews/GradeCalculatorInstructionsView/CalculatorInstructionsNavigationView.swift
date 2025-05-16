//
//  CalculatorInstructionsNavigationView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 06/04/2025.
//

import SwiftUI

struct CalculatorInstructionsNavigationView: View {
    
    @Environment(\.colorScheme) var colorScheme
    @EnvironmentObject var gradeCalculatorViewModel: GradeCalculatorViewModel
 
    var body: some View {
        NavigationView {
            ZStack {
                Text("Click for")
                    .font(.caption)
                    .padding(.bottom, 20)
                Text("instructions")
                    .font(.caption)
                
                NavigationLink(destination: GradeCalculatorInstructionsView()) {
                    Image("custom.questionmark.circle.light")
                        .resizable()
                        .frame(width: 30, height: 30)
                        .symbolEffect(.bounce.down.wholeSymbol, options: .repeat(.periodic(delay: 5.0)))
                        .padding(.bottom, 70)

                }
                
            }
            
        }
        .frame(maxHeight: 100)
    }
}

#Preview {
    CalculatorInstructionsNavigationView()
        .environmentObject(GradeCalculatorViewModel())
}
