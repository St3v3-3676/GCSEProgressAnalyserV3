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
        HStack {
            ZStack {
                Grid {
                    ForEach(calculatorViewModel.gradeBoundaries.sorted(by: { $0.key < $1.key }), id: \.key) { (key, value) in
                        GridRow (alignment: .center) {
                            DynamicTitleTextView(text: "\(key)")
                                .padding(.leading, 50)

                            Image(systemName: "arrowshape.forward.fill")
                                .padding(.leading, 30)
                                .font(.title)
                                .foregroundStyle(Color.arrowColour)
                                .fontWeight(.semibold)
                                .padding(.trailing, 15)

                            DynamicTitleTextView(text: "\(String(value))")
                                .font(.title)
                                .padding(.trailing, 50)

                        }
                        
                    }
                }

            }
        }
    }
}

