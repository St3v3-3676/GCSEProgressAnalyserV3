//
//  TabToolBarView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

/// Enum representing the available tabs in the application's tab bar.
enum TabSelection: String {
    case home, calculator, tools, settings
}

/// A view that provides a tab bar interface for navigating between the main sections of the application.
struct TabToolBarView: View {
    /// The currently selected tab in the tab bar.
    @State private var selectedTab: TabSelection = .home
    
    /// A binding that determines whether dark mode is enabled.
    @Binding var darkModeEnabled: Bool
    
    /// The environment object providing the grade calculator's view model.
    @EnvironmentObject var calculatorFormViewModel: CSGradeCalculatorViewModel
    
    /// The content and layout of the tab bar view.
    ///
    /// The TabView contains four tabs representing different sections:
    /// Home, Calculator, Tools, and Settings. Each tab displays its associated view
    /// and uses a label with an icon. The tabViewStyle is set to `.sidebarAdaptable`
    /// and the accent color is blue.
    var body: some View {
        if #available(iOS 26.0, *) {
            TabView(selection: $selectedTab) {
                HomeView()
                    .tabItem { Label(TabBarLabelTexts.homeTabText.labelText, systemImage: "house") }
                    .tag(TabSelection.home)
                    .accessibilityLabel("Home Tab")
                    .accessibilityHint("Navigates to the home section.")
                
                CalculatorView()
                    .tabItem { Label(TabBarLabelTexts.gradeCalculatorTabText.labelText, image: "calculate") }
                    .tag(TabSelection.calculator)
                    .accessibilityLabel("Calculator Tab")
                    .accessibilityHint("Navigates to the grade calculator.")
                
                AppToolsView()
             
                    .tabItem { Label(TabBarLabelTexts.toolsTabText.labelText, systemImage: "wrench") }
                    .tag(TabSelection.tools)
                    .accessibilityLabel("Tools Tab")
                    .accessibilityHint("Navigates to the tools section.")
                
                SettingsView(darkModeEnabled: $darkModeEnabled)
                    .tabItem { Label(TabBarLabelTexts.settingsTabText.labelText, systemImage: "gear") }
                    .tag(TabSelection.settings)
                    .accessibilityLabel("Settings Tab")
                    .accessibilityHint("Navigates to the settings.")
            }
            .tabBarMinimizeBehavior(.onScrollDown)
            .scrollEdgeEffectStyle(.soft, for: .all)
            .accentColor(.newBackgroundColourGradientStart)
            .accessibilityElement(children: .contain)
            .accessibilityLabel("Main Tab Bar Navigation")
        } else {
            // Fallback on earlier versions
        }
    }
}

/// SwiftUI preview for TabToolBarView, used to display the view in Xcode's canvas.
#Preview {
    TabToolBarView(darkModeEnabled: .constant(true))
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
