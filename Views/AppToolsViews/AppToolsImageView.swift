//
//  AppToolsImageView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 16/05/2025.
//

import SwiftUI

struct AppToolsImageView: View {
    
    var body: some View {
        Image(systemName: AppToolsImages.toolsViewImage.imageName)
            .foregroundStyle(Colours.blueScheme.colour)
            .font(.largeTitle)
            .shadow(radius: 1)
    }
}

#Preview {
    AppToolsImageView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
