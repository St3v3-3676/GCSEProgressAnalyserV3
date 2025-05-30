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
                    .multilineTextAlignment(.leading)

            } else {
                Text(instruction)
                    .multilineTextAlignment(.leading)
                    .font(.system(size: 18))
                    .padding(.horizontal)
                    
            }
        }
    }
}
