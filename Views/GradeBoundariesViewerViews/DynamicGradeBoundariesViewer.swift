//
//  DynamicGradeBoundariesViewer.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 12/06/2025.
//

import SwiftUI

struct DynamicGradeBoundariesViewer: View {
    @EnvironmentObject var gradeCalculatorViewModel: CSGradeCalculatorViewModel
    @State private var isShowingGradeBoundariesSheet = false
    
    let paddingValue = CGFloat(15)
    let opacityValue = Double(0.5)
    
    var body: some View {
        ZStack {
            ScrollView {
                DynamicTitleTextView(text: "Grade Boundaries \n Viewer")
                
                SeperatorView()
                
                SubjectPickerView()
                    .padding(.top,paddingValue)
                
                GradeBoundaryPickerView()
                    .padding(.bottom,paddingValue)
                
                SeperatorView()
                
                Spacer()
                
                Button(action: { isShowingGradeBoundariesSheet = true }) {
                    DynamicSubTitleTextView(text: "Click to View \n Boundaries")
                        .padding(.horizontal, paddingValue)
                        .padding(.vertical, paddingValue)
                        .background(Color(.newBackgroundColourGradientStart).opacity(opacityValue))
                        .clipShape(Capsule())
                }
                .onChange(of: gradeCalculatorViewModel.selectedGradeBoundaryYear) { _, _ in
                    isShowingGradeBoundariesSheet = true
                    gradeCalculatorViewModel.getGradeBoundaries()
                }
            }
            .background( LinearGradient(gradient: Gradient(colors: [Color.newBackgroundColourGradientStart.opacity(0.6), Color.newBackgroundColorGradientEnd.opacity(0.6)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
            .sheet(isPresented: $isShowingGradeBoundariesSheet) {
                DynamicTitleTextView(text: "Grade boundaries for \n \(gradeCalculatorViewModel.selectedSubject) \(gradeCalculatorViewModel.selectedGradeBoundaryYear)")
                
                GradeBoundariesGridView()
                    .presentationBackground(RadialGradient(gradient: Gradient(colors: [Color.newBackgroundColourGradientStart, Color.newBackgroundColorGradientEnd, Color.blue]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: 0, endRadius: 1000).opacity(0.3))
                
                    
                
                DynamicSubTitleTextView(text: "Swipe down to dismiss")
                    .padding(.top, 50)
            }
        }
    }
}

#Preview {
    DynamicGradeBoundariesViewer()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
