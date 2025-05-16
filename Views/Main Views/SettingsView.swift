//
//  SettingsScreenView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct SettingsView: View {
    @Environment(AppWideViewModel.self) var appWideViewModel
    
    @Binding var darkModeEnabled: Bool

    var body: some View {
        NavigationStack {
            Toggle(isOn: $darkModeEnabled) {
                Text(SettingsScreenModel.init().darkModeText)
                    .font(appWideViewModel.getContentFont())
      
            }
            .navigationTitle(Text(ViewTitles.settingsViewTitle.title))
        }
    }
}
#Preview {
    SettingsView(darkModeEnabled: .constant(true))
        .environmentObject(GradeCalculatorViewModel())
        .environment(AppWideViewModel())
}
