//
//  ContentView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI
import Foundation


struct ContentView: View {
    @AppStorage("darkModeEnabled") var darkModeEnabled: Bool = false
    
    var body: some View {
        VStack {
            TabToolBarView(darkModeEnabled: $darkModeEnabled)
        }
        .tint(.accent)
        .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}
#Preview {
    ContentView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}

