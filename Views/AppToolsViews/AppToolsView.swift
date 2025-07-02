//
//  AppToolsView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI
import SwiftData

struct AppToolsView: View {
    @Environment(\.managedObjectContext) private var managedObjectContext
    @Query private var resultsData: [ResultsData]
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .center) {
                DynamicTitleTextView(text: "App Tools")
                
                List {
                    NavigationLink(destination: StudentsAndClassesView()) {
                        Text("Add Students and Classes")
                            .fontWeight(.bold)
                            .font(.title)
                        Image(systemName: "graduationcap.fill")
                            .foregroundColor(.purple)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .listRowBackground(Color.clear)
                    
                    
                    
                    NavigationLink(destination: CSStudentsResultsFilesView()) {
                        Text("Student Results")
                            .fontWeight(.bold)
                            .font(.title)
                        Image(systemName: "chart.bar.yaxis")
                            .foregroundColor(.purple)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .listRowBackground(Color.clear)
                    
                    NavigationLink(destination: DynamicGradeBoundariesViewer()) {
                        Text("Grade Boundaries Viewer")
                            .fontWeight(.bold)
                            .font(.title)
                        Image(systemName: "9.square")
                            .foregroundColor(.purple)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .listRowBackground(Color.clear)
                    
                    NavigationLink(destination: ResultsAnalaysisView()) {
                        Text("Results Analysis")
                            .fontWeight(.bold)
                            .font(.title)
                        Image(systemName: "questionmark.text.page")
                            .foregroundColor(.purple)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                    }
                    .listRowBackground(Color.clear)
                }
                .scrollContentBackground(.hidden)
                .listStyle(.plain)
            }
            .background(LinearGradient(gradient: Gradient(colors: [.newBackgroundColourGradientStart.opacity(0.6), .newBackgroundColorGradientEnd.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
        }
    }
}
    

#Preview {
    AppToolsView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
