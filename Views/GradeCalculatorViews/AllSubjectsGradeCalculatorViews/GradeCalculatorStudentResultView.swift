//
//  StudentResultView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 04/04/2025.
//

import SwiftUI

struct GradeCalculatorStudentResultView: View {
    @EnvironmentObject var calculatorViewModel:  GradeCalculatorViewModel
    
    var body: some View {
        ZStack {
            
            Text("Student Result")
            
            
        }
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
            Text("Total Marks:")
            
            
            RoundedRectangle(cornerRadius: 10)
                Text("\(calculatorViewModel.totalMarks)")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundStyle(.red)
                
 
        }
        
        ZStack {
            RoundedRectangle(cornerRadius: 10)
            Text("Grade:")
            
            RoundedRectangle(cornerRadius: 10)
                Text("\(calculatorViewModel.grade)")
                    .font(.system(size: 25, weight: .bold, design: .default))
                    .foregroundStyle(.red)
            

        }
        
    }
}

#Preview {
    GradeCalculatorStudentResultView()
        .environmentObject(GradeCalculatorViewModel())
}
