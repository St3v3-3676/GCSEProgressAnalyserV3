//
//  DynamicSubTitleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 12/06/2025.
//

import SwiftUI

struct DynamicSubTitleTextView: View {
    
    let text: String
    
    /// The current dynamic type size category from the environment. Used to adjust font scaling and layout.
    @Environment(\.sizeCategory) var sizeCategory
    
    var body: some View {
        Group {
            if sizeCategory.isAccessibilityCategory {
                Text(text)
                    .frame(width: .infinity)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.appFontColours)
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
            } else {
                Text(text)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.appFontColours)
                    .lineLimit(3)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    DynamicSubTitleTextView(text: "Select a subject:")
}
