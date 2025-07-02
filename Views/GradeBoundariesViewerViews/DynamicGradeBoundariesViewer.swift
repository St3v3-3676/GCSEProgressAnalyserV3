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
    let opacityValue = Double(0.6)
    let sheetTitlePaddingValue = CGFloat(20)
    let sheetInstructionPaddingValue = CGFloat(50)
    
    
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
                
                if #available(iOS 26.0, *) {
                    Button {
                        isShowingGradeBoundariesSheet = true
                    } label: {
                        Text("Click to View \n Boundaries")
                            .foregroundStyle(.appFontColours)
                            .lineLimit(nil)
                            .padding(.horizontal, paddingValue)
                    }
                    
                    .onChange(of: gradeCalculatorViewModel.selectedGradeBoundaryYear) { _, _ in
                        isShowingGradeBoundariesSheet = true
                        gradeCalculatorViewModel.getGradeBoundaries()
                    }
                    .glassEffect()
                    
                } else {
                    Button(action: { isShowingGradeBoundariesSheet = true }) {
                        Text("Click to View \n Boundaries")
                    }
                    .onChange(of: gradeCalculatorViewModel.selectedGradeBoundaryYear) { _, _ in
                        isShowingGradeBoundariesSheet = true
                        gradeCalculatorViewModel.getGradeBoundaries()
                    }
                    .tint(.buttonTint)
                    .backgroundStyle(Color.purple)
                    .buttonBorderShape(.capsule)
                    .buttonStyle(.bordered)
                    
                    //.background(Color.buttonBackgroundColour)
                }
            }
            .background( LinearGradient(gradient: Gradient(colors: [Color.newBackgroundColourGradientStart.opacity(opacityValue), Color.newBackgroundColorGradientEnd.opacity(opacityValue)]), startPoint: .top, endPoint: .bottom)
                .ignoresSafeArea())
            .sheet(isPresented: $isShowingGradeBoundariesSheet) {
                DynamicTitleTextView(text: "Grade boundaries for \n \(gradeCalculatorViewModel.selectedSubject) \(gradeCalculatorViewModel.selectedGradeBoundaryYear)")
                    .padding(.bottom,sheetTitlePaddingValue)
                
                GradeBoundariesGridView()
                    .presentationBackground(Color.sheetBackgroundColour)
                
                DynamicSubTitleTextView(text: "Swipe down to dismiss")
                    .padding(.top, sheetInstructionPaddingValue)
            }
        }
    }
}

#Preview {
    DynamicGradeBoundariesViewer()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
