//
//  CustomSubjectsPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct SubjectPickerView: View {
    @EnvironmentObject var viewModel: CSGradeCalculatorViewModel
    
    @Environment(\.sizeCategory) var sizeCategory

    var body: some View {
        VStack {
            DynamicSubTitleTextView(text: "Select a subject:")
        }
        .padding(.bottom, -20)
        
        HStack {
            extractedFunc()
                .padding(.trailing, -30)
 
            Image(systemName: "arrowshape.backward.fill")

                .font(.largeTitle)
                .foregroundStyle(.arrowColour)
                .symbolEffect(.wiggle.clockwise.byLayer, options: .repeat(.periodic(delay: 2.0)))
            
            
        }
        .frame(maxWidth: .infinity)
    }

    
    fileprivate func extractedFunc() -> ModifiedContent<some View, AccessibilityAttachmentModifier> {
        return Picker(selection: $viewModel.selectedSubject) {
            ForEach(AppStringsModel.init().subjects, id: \.self) { subjects in
                Text(subjects)
                    .truncationMode(.tail)
            }
        } label: {
            Image(systemName: "house")
        }
        .tint(.appFontColours)
        .fontWeight(.bold)
        .pickerStyle(MenuPickerStyle())
        .background(Color.clear)
        .padding(.horizontal)
        .accessibilityLabel("Select a grade boundary")
        .accessibilityAddTraits(.isHeader)
    }
}
