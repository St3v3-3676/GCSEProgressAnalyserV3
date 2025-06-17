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
                    .font(.title)
                    .fontWeight(.semibold)
                    .lineLimit(nil)
                    .multilineTextAlignment(.center)
            } else {
                Text(text)
                    .font(.title)
                    .fontWeight(.semibold)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    DynamicSubTitleTextView(text: "Hello World")
}
