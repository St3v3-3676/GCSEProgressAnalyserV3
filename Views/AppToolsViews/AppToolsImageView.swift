//
//  AppToolsImageView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//

import SwiftUI

struct AppToolsImageView: View {

    var body: some View {
        VStack {
            Image(systemName: AppToolsImages.toolsViewImage.imageName)
                .foregroundStyle(Colours.blueScheme.colour)
                .font(FontUtilities.init().setImageFont())
                .shadow( radius: ShadowRadiusValues.large.radiusValue)
        }
        
    }
}

#Preview {
    AppToolsImageView()
}
