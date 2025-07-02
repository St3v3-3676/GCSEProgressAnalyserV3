//
//  InstructionRow.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 22/05/2025.
//
import SwiftUI

struct InstructionRow: View {
    let text: String
    let isNote: Bool
    let opacity: Double
    let horizontalPadding: CGFloat
    let verticalPadding: CGFloat
    let horizontalSpacing: CGFloat
    let verticalSpacing: CGFloat

    var body: some View {
        Grid(horizontalSpacing: horizontalSpacing, verticalSpacing: verticalSpacing) {
            GridRow {
                Text(text)
                    .padding(.horizontal, horizontalPadding)
                    .padding(.vertical, verticalPadding)
                    .font(.title3)
                    .fontWeight(isNote ? .heavy : .semibold)
            }
        }
    }
}
