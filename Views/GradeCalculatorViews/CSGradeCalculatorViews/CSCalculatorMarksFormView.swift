//
//  CSCalculatorMarksFormView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 02/07/2025.
//

import SwiftUI

struct CSCalculatorMarksFormView: View {
    let paddingValue = CGFloat(10)
    
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        CSPaper1MarksView()
        
        CSPaper2MarksView()
        
        CSTotalMarksAndGradeView()
            .padding(.bottom, paddingValue)
        
        if #available(iOS 26.0, *) {
            HStack {
                Button {
                    calculatorViewModel.resetForm()
                }
                label: {
                    Text("Reset \n form")
                        .foregroundStyle(.appFontColours)
                        .lineLimit(nil)
                        .padding(.horizontal)
                }
                .glassEffect()
                
                Button {
                    let newStudentResult = calculatorViewModel.insertStudentData()
                    modelContext.insert(newStudentResult)
                } label: {
                    Text("Save \n Result")
                        .foregroundStyle(.appFontColours)
                        .lineLimit(nil)
                        .padding(.horizontal)
                }
                .glassEffect()
            }
            

        } else {
            // Fallback on earlier versions
            
            HStack {
                Button {
                    calculatorViewModel.resetForm()
                }
                label: {
                    Text("Reset")
                }
                .buttonStyle(.borderedProminent)
                
                
                Button {
                    let newStudentResult = calculatorViewModel.insertStudentData()
                    modelContext.insert(newStudentResult)
                } label: {
                    Text("Save \n Result")
                        .foregroundStyle(.appFontColours)
                        .lineLimit(nil)
                        .padding(.horizontal)
                }
            }
        }
    }
}

#Preview {
    CSCalculatorMarksFormView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
}
