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
    @EnvironmentObject var calculatorFormView: GradeCalculatorViewModel
    
    @State private var appWideViewModel = AppWideViewModel()
    @State private var gradeBoundaryViewModel = GradeBoundaryViewerViewModel()
    @State private var studentDetailsSectionViewModel =  StudentDetailsSectionViewModel()
    @State private var subjectAndBoundaryPickerViewModel = SubjectAndBoundaryPickerViewModel()
    
    var body: some Scene {
        
        
        WindowGroup {
            //AuthenticationView()
            ContentView()
                .environmentObject(GradeCalculatorViewModel())
                .modelContainer(for: ResultsData.self)
                .environment(appWideViewModel)
                .environment(gradeBoundaryViewModel)
                .environment(studentDetailsSectionViewModel)
                .environment(subjectAndBoundaryPickerViewModel)
        }
    }
}
