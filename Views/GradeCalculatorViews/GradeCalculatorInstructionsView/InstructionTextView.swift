//
//  InstructionTextView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//

import SwiftUI

struct InstructionTextView: View {
    
    var instruction: String
    
    var body: some View {
        VStack {
            if instruction.contains("Note") {
                Text(instruction)
                    .padding(.horizontal)
                    .foregroundStyle(.red)
                    .fontWeight(.heavy)
                    .padding(.leading, 10)
                    .padding(.top, 10)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.medium)
            } else {
                Text(instruction)
                    .fontWeight(.medium)
                    .padding(.leading, 10)
                    .multilineTextAlignment(.leading)
                    .fontWeight(.medium)
            }
            
 
        }
    }
}
