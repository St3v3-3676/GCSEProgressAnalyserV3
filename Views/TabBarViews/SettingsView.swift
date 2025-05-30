//
//  SettingsScreenView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct SettingsView: View {
    @Binding var darkModeEnabled: Bool
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                
                let width = geometry.size.width
                VStack {
                    AppTitleView(text: "Settings")
                    
                    Toggle(isOn: $darkModeEnabled) {
                        Text(AppStringsModel.init().darkModeText)
                            .font(.system(size: width * Fonts.contentFont.widthMultiplier))
                            .padding(.leading, ScreenDimensionsUtilitites.init().getScreenWidth() * 0.1)
                    }
                    .padding(.trailing, ScreenDimensionsUtilitites.init().getScreenWidth() * 0.1)
                }
            }
        }
    }
}
#Preview {
    SettingsView(darkModeEnabled: .constant(true))
}
