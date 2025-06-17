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
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            } else {
                Text(text)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    DynamicTitleTextView(text: "Grade Boundaries \n Viewer")
}
