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
        .preferredColorScheme(darkModeEnabled ? .dark : .light)
    }
}
#Preview {
    ContentView()
        .environmentObject(GradeCalculatorViewModel())
        .environment(AppWideViewModel())
        .environment(GradeBoundaryViewerViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())
}
