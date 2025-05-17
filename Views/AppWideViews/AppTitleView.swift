//
//  GradeBoundariesTitleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 18/04/2025.
//

import SwiftUI

struct AppTitleView: View {
    var text: String
    var textType: String
    
    var body: some View {
        VStack {
            Text(text)
                .frame(alignment: .center)
                .font(FontUtilities.init().setTextFont(textType: textType))
    
            SeperatorView()
        }
    }
}

