//
//  SeperatorView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 18/04/2025.
//

import SwiftUI

struct SeperatorView: View {
    @Environment(GradeBoundarySelectionViewModel.self) var subjectAndBoundaryPickerViewModel

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: 100, height: 2)
        }
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue + 20)
    }
}

