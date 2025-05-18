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
            VStack {
                AppTitleView(text: "Settings", textType: "title")
                
                Toggle(isOn: $darkModeEnabled) {
                    Text(AppStringsModel.init().darkModeText)
                        .font(FontUtilities.init().getContentFont())
                        .padding(.leading, ScreenDimensionsUtilitites.init().getScreenWidth() * 0.1)
                }
                .padding(.trailing, ScreenDimensionsUtilitites.init().getScreenWidth() * 0.1)
            }
            .position(x: ScreenDimensionsUtilitites.init().getScreenWidth() / 2, y: ScreenDimensionsUtilitites.init().getScreenHeight() / 15)
        }
    }
}
#Preview {
    SettingsView(darkModeEnabled: .constant(true))
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())
}
