//
//  DynamicTextView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 11/06/2025.
//

import SwiftUI

struct DynamicTitleTextView: View {
    /// The current dynamic type size category from the environment. Used to adjust font scaling and layout.
    @Environment(\.sizeCategory) var sizeCategory
    
    let text: String
    
    var body: some View {
        Group {
            if sizeCategory.isAccessibilityCategory {
                Text(text)
                    .font(.title)
                    .fontWeight(.bold)
                    .minimumScaleFactor(0.6)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            } else if sizeCategory == .extraExtraExtraLarge {
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            } else {
                Text(text)
                    .font(.title)
                    .fontWeight(.bold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    DynamicTitleTextView(text: "Grade Boundaries \n Viewer")
}
