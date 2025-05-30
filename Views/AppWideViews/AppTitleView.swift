//
//  GradeBoundariesTitleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 18/04/2025.
//

import SwiftUI

struct AppTitleView: View {
    var text: String

    var body: some View {
        VStack {
            Text(text)
                .font(.title)
                .fontWeight(.bold)
            
            SeperatorView()
        }
    }
}


