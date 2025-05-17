//
//  GradeCalculatorInstructionsView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 06/04/2025.
//

import SwiftUI

struct GradeCalculatorInstructionsView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    var body: some View {
       ZStack {
            Text("Instructions")
                    .font(.title)

            Text("How to use the grade calculator:")
                    .offset(y: 30)
        }
        
        ZStack {
            Text(CalculatorInstructionsStrings.instructions1.instructiontext)

                
            Text(CalculatorInstructionsStrings.instructions2.instructiontext)

            
            Text(CalculatorInstructionsStrings.instructions3.instructiontext)
         
            
            Text(CalculatorInstructionsStrings.instructions4.instructiontext)
  
            
            Text(CalculatorInstructionsStrings.instructions5.instructiontext)

            
            Text(CalculatorInstructionsStrings.instructions6.instructiontext)

            
            Text(CalculatorInstructionsStrings.instructions7.instructiontext)

            
        }


        
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 350, height: 350)
                .foregroundStyle(.gray).opacity(0.2)
                .offset(y: -340)
                
        }
        .shadow(color: .blue, radius: 15)
    }
}

#Preview {
    GradeCalculatorInstructionsView()
        .environmentObject(CSGradeCalculatorViewModel())
}
