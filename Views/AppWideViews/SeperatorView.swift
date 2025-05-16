//
//  SeperatorView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 18/04/2025.
//

import SwiftUI

struct SeperatorView: View {
    @Environment(GradeBoundaryViewerViewModel.self) var gradeBoundaryViewerViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    @Environment(AppWideViewModel.self) var appWideViewModel
    
    var body: some View {
        VStack {
            Rectangle()
                .frame(width: appWideViewModel.getScreenWidth() / RectangleModel.init().sectionSeparatorWidthMultiplier, height: appWideViewModel.getScreenHeight() * RectangleModel.init().sectionSeparatorHeightMultiplier)
        }
        .padding(subjectAndBoundaryPickerViewModel.paddingBottomAlignment, subjectAndBoundaryPickerViewModel.paddingValue + 20)
    }
}

