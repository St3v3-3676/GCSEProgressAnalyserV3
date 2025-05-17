//
//  SeperatorView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 18/04/2025.
//

import SwiftUI

struct SeperatorView: View {
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: ScreenDimensionsUtilitites.init().getScreenWidth() / RectangleModel.init().sectionSeparatorWidthMultiplier, height: ScreenDimensionsUtilitites.init().getScreenHeight() * RectangleModel.init().sectionSeparatorHeightMultiplier)
        }
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue + 20)
    }
}

