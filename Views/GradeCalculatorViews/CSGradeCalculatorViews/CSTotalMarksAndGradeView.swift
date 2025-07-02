//
//  CSTotalMarksAndGradeView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 24/06/2025.
//

import SwiftUI

struct CSTotalMarksAndGradeView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Total Marks:")
                    .font(.title)
                Text("\(calculatorViewModel.totalMarks)")
                    .font(.title)
                
            }
            
            HStack {
                Text("Grade:")
                    .font(.title)
                Text("\(calculatorViewModel.grade)")
                    .font(.title)
            }
        }
    }
}

#Preview {
    CSTotalMarksAndGradeView()
        .environmentObject(CSGradeCalculatorViewModel())
}
