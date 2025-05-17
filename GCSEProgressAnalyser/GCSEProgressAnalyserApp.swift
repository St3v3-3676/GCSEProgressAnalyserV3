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
    @EnvironmentObject var calculatorFormView: CSGradeCalculatorViewModel
    
    @State private var studentDetailsSectionViewModel =  StudentDetailsSectionViewModel()
    @State private var subjectAndBoundaryPickerViewModel = SubjectAndBoundaryPickerViewModel()
    
    var body: some Scene {
        
        
        WindowGroup {
            //AuthenticationView()
            ContentView()
                .environmentObject(CSGradeCalculatorViewModel())
                .modelContainer(for: ResultsData.self)
                .environment(studentDetailsSectionViewModel)
                .environment(subjectAndBoundaryPickerViewModel)
        }
    }
}
