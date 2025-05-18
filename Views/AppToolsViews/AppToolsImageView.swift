//
//  AppToolsImageView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//

import SwiftUI

struct AppToolsImageView: View {
    let appToolsTopPadding: CGFloat = 30
    var body: some View {
        VStack {
            Image(systemName: AppToolsImages.toolsViewImage.imageName)
                .foregroundStyle(Colours.blueScheme.colour)
                .font(FontUtilities.init().setImageFont())
                .shadow( radius: ShadowRadiusValues.large.radiusValue)
        }
        .padding(.top, appToolsTopPadding)
    }
}

#Preview {
    AppToolsImageView()
        .environment(SubjectAndBoundaryPickerViewModel())
}
