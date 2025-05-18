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
            AppToolsImageView()
            
            AppTitleView(text: "App Tools", textType: TextStringTypes.title.type)
                .position(x: TitlePositionCoordinates.xCoordinate.coordinate, y: TitlePositionCoordinates.yCoordinate.coordinate)
                VStack {
                    List {
                        NavigationLink(destination: StudentsAndClassesView()) {
                            Text(AppToolsNavigationLinkStrings.addStudentsAndClasses.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.addStudentsAndClasses.imageName)
                                .foregroundColor(.purple)
                                .font(.largeTitle)
                        }
                        NavigationLink(destination: CSStudentsResultsFilesView()) {
                            Text(AppToolsNavigationLinkStrings.studentResults.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.studentResults.imageName)
                                .font(.largeTitle)
                            
                            
                        }
                        NavigationLink(destination: GradeBoundariesView()) {
                            Text(AppToolsNavigationLinkStrings.gradeBoundaries.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.gradeBoundaries.imageName)
                                .foregroundColor(.purple)
                                .font(.largeTitle)
                        }
                        NavigationLink(destination: AppToolsNavigationLinks.studentResults.destination) {
                            Text(AppToolsNavigationLinkStrings.resultsAnalysis.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.studentResults.imageName)
                                .foregroundColor(.purple)
                                .font(.largeTitle)
                        }
                        
                    }
                    .listStyle(.plain)
                    .frame(height: 500)
                    .offset(y: 100)
                }
                
            }
        }
    }

#Preview {
    AppToolsView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())

}
