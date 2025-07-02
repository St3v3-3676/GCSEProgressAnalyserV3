//
//  CustomGradeBoundariesPickerViews.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct GradeBoundaryPickerView: View {
    @EnvironmentObject var viewModel: CSGradeCalculatorViewModel
    
    var body: some View {
        VStack {
            DynamicSubTitleTextView(text: AppStringsModel.init().boundaryText)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
        }
        
        HStack {
            extractedFunc()
                .padding(.trailing, -20)
            
            Image(systemName: "arrowshape.backward.fill")
                .font(.largeTitle)
                .foregroundStyle(.arrowColour)
            
                .symbolEffect(.wiggle.clockwise.byLayer, options: .repeat(.periodic(delay: 2.0)))
        }
    }
    
    fileprivate func extractedFunc() -> ModifiedContent<some View, AccessibilityAttachmentModifier> {
        return Picker("", selection: $viewModel.selectedGradeBoundaryYear) {
            ForEach(AppStringsModel.init().gradeBoundaryYears, id: \.self) { years in
                Text(years)
            }
        }
        .onChange(of: viewModel.selectedGradeBoundaryYear) {
            viewModel.calculateTotalMarks()
            viewModel.calculateGrade(year: viewModel.selectedGradeBoundaryYear)
        }
        .tint(.appFontColours)
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
        .accessibilityLabel("Select a grade boundary")
        .accessibilityAddTraits(.isHeader)
        
    }
}

