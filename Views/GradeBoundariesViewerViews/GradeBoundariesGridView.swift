//
//  GradeBoundariesRectangleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//
import SwiftUI

struct GradeBoundariesGridView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel

    var body: some View {
        
        let width = UIScreen.main.bounds.width
        
        HStack {
            ZStack {
                Grid {
                    ForEach(calculatorViewModel.gradeBoundaries.sorted(by: { $0.key < $1.key }), id: \.key) { (key, value) in
                        GridRow (alignment: .center) {
                            Text("\(key)")
                                    .font(.title)
                                
                            Image(systemName: "arrow.right.square.fill")
                                .padding(.leading, 30)
                                .font(.title)
                                .foregroundStyle(Colours.blueScheme.colour)
                                .fontWeight(.semibold)
                                .padding(.trailing, 15)

                            Text("\(String(value))")
                                .font(.title)
                        }
                    }
                }
                .frame(width: width * 0.6, alignment: .center)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Colours.greenScheme.colour).opacity(0.5)
                        .frame(width: width * 0.5)
                )
            }
        }
    }
}

