//
//  TabToolBarView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct TabToolBarView: View {
    @State var selectedTab = "home"
    
    @Binding var darkModeEnabled: Bool
    
    @EnvironmentObject var calculatorFormViewModel: GradeCalculatorViewModel
    var body: some View {
        TabView(selection: $selectedTab) {
            Tab(TabBarLabelTexts.homeTabText.labelText,  systemImage: Images.homeTabImageName.imageName, value: TabBarLabelTexts.homeTabText.labelText) {
                HomeView()
            }
            
            Tab(TabBarLabelTexts.gradeCalculatorTabText.labelText, image: Images.gradeCalculatorTabImageName.imageName, value: TabBarLabelTexts.gradeCalculatorTabText.labelText) {
                CalculatorView()
                
            }
            Tab(TabBarLabelTexts.toolsTabText.labelText, systemImage: Images.ToolsTabImageName.imageName, value: TabBarLabelTexts.toolsTabText.labelText) {
                AppToolsView()
            }
            Tab(TabBarLabelTexts.settingsTabText.labelText,  systemImage: Images.settingsTabImageName.imageName, value: TabBarLabelTexts.settingsTabText.labelText) {
                SettingsView(darkModeEnabled: $darkModeEnabled)
                
            }
        }
        .accentColor(.blue)
        .tabViewStyle(.sidebarAdaptable)
        
        
        
        
        
        
        
        
        
        
    }
}
#Preview {
    TabToolBarView(darkModeEnabled: .constant(true))
        .environmentObject(GradeCalculatorViewModel())

}
