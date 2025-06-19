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
        VStack {
            DynamicTitleTextView(text: "Settings")
                .padding(.top, -340)
            
            Toggle(isOn: $darkModeEnabled) {
                Text(AppStringsModel.init().darkModeText)
                    .font(.largeTitle)
                    .padding(.leading)
            }
            .padding(.top, -300)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background( LinearGradient(gradient: Gradient(colors: [Color.newBackgroundColourGradientStart.opacity(0.6), Color.newBackgroundColorGradientEnd.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
            .ignoresSafeArea())
        .ignoresSafeArea()
    }
}
#Preview {
    SettingsView(darkModeEnabled: .constant(true))
}
