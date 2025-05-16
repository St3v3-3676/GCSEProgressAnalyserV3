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
            VStack {
                TitleView(viewTitle: ViewTitles.appToolsViewTitle.title)
                
                Image(systemName: AppToolsImages.toolsViewImage.imageName)
                    .resizable()
                    .foregroundStyle(Colours.blueScheme.colour)
                    .frame(width: FrameWidths.appToolsImageWidth.width, height: FrameHeights.appToolsImageHeight.height)
                VStack {
                    List {
                        NavigationLink(destination: AppToolsNavigationLinks.addStudentsAndClasses.destination) {
                            Text(AppToolsNavigationLinkTitles.addStudentsAndClasses.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.addStudentsAndClasses.imageName)
                                .foregroundColor(.purple)
                                .font(.largeTitle)
                        }
                        NavigationLink(destination: AppToolsNavigationLinks.studentResults.destination) {
                            Text(AppToolsNavigationLinkTitles.studentResults.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.studentResults.imageName)
                                .font(.largeTitle)
                            
                            
                        }
                        NavigationLink(destination: AppToolsNavigationLinks.gradeBoundaries.destination) {
                            Text(AppToolsNavigationLinkTitles.gradeBoundaries.title)
                                .fontWeight(.bold)
                                .font(.title)
                            Image(systemName: AppToolsImages.gradeBoundaries.imageName)
                                .foregroundColor(.purple)
                                .font(.largeTitle)
                        }
                        NavigationLink(destination: AppToolsNavigationLinks.studentResults.destination) {
                            Text(AppToolsNavigationLinkTitles.resultsAnalysis.title)
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
}
#Preview {
    AppToolsView()
        .environment(AppWideViewModel())
        .environment(GradeBoundaryViewerViewModel())
        .environmentObject(GradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(SubjectAndBoundaryPickerViewModel())

}
