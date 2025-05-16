//
//  GradeCalculatorResetButtonView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 04/04/2025.
//

import SwiftUI

struct GradeCalculatorResetButtonView: View {
    @EnvironmentObject private var calculatorViewModel: GradeCalculatorViewModel
    
    @Environment(\.colorScheme) var colorScheme
    
    
    var body: some View {
        if colorScheme == .dark {
            VStack {
                Text("Click to reset the form")
                
                Button {
                    calculatorViewModel.resetForm()
                } label: {
                    Text("Reset")
                }
                .buttonStyle(.bordered).buttonBorderShape(.capsule).font(.title).foregroundStyle(.orange)
                .tint(.orange)
            }
        } else {
                VStack {
                    Text("Click to reset the form")
                    
                    Button {
                        calculatorViewModel.resetForm()
                    } label: {
                        Text("Reset")
                    }
                    .buttonStyle(.bordered).buttonBorderShape(.capsule).font(.title).foregroundStyle(.cyan)
                    .tint(.cyan)
                }
            
                
        }
        
        
        
        
        
            

//        .
    }
}

#Preview {
    GradeCalculatorResetButtonView()
        .environmentObject(GradeCalculatorViewModel())
}
