//
//  GCSEProgressAnalyserApp.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI
import SwiftData

@main
struct GCSEProgressAnalyserApp: App {
    var body: some Scene {
        @State var csGradeCalculatoViewModel = CSGradeCalculatorViewModel()
        @State var gradeBoundarySelectionViewModel = GradeBoundarySelectionViewModel()
        @State var studentDetailsSectionViewModel = StudentDetailsSectionViewModel()
        
        WindowGroup {
            //AuthenticationView()
            ContentView()
                .modelContainer(for: ResultsData.self)
                .environmentObject(CSGradeCalculatorViewModel())
                .environment(StudentDetailsSectionViewModel())
                .environment(GradeBoundarySelectionViewModel())
        }
    }
}
