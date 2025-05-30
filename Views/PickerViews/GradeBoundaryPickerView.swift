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
            Text(AppStringsModel.init().boundaryText)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
                
            extractedFunc()
                
            SeperatorView()
        }
    }
    
    fileprivate func extractedFunc() -> ModifiedContent<some View, AccessibilityAttachmentModifier> {
        return Picker("", selection: $viewModel.selectedGradeBoundaryYear) {
            ForEach(AppStringsModel.init().gradeBoundaryYears, id: \.self) { years in
                Text(years)
            }
        }
        .tint(Colours.greenScheme.colour)
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
        .accessibilityLabel("Select a grade boundary")
        .accessibilityAddTraits(.isHeader)
    }
}

