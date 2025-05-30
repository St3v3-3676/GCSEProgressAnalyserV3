//
//  CustomSubjectsPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct SubjectPickerView: View {
    @EnvironmentObject var viewModel: CSGradeCalculatorViewModel
    
    init() {
        print("SubjectPickerView loaded with viewModel")
    }
    
    var body: some View {
        
        
        VStack {
            Text(AppStringsModel.init().subjectText)
                .font(.title2)
                .fontWeight(.semibold)
                .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
                
            extractedFunc()
                
        }
        .padding(.horizontal)
        .onAppear {
            print("SubjectPickerView got environment object: \(viewModel)")
        }
    }

    
    fileprivate func extractedFunc() -> ModifiedContent<some View, AccessibilityAttachmentModifier> {
        return Picker("", selection: $viewModel.selectedSubject) {
            ForEach(AppStringsModel.init().subjects, id: \.self) { years in
                Text(years)
            }
        }
        .tint(Colours.greenScheme.colour)
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
        .accessibilityLabel("Select a grade boundary")
        .accessibilityAddTraits(.isHeader)
    }
}
