//
//  GradeBoundariesTitleView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 18/04/2025.
//

import SwiftUI

struct AppTitleView: View {
    @Environment(AppWideViewModel.self) var appWideViewModel
    @Environment(SubjectAndBoundaryPickerViewModel.self) var subjectAndBoundaryPickerViewModel
    
    var text: String
    var textType: String
    
    var body: some View {
        VStack {
            if textType == "title" {
                Text(text)
                    .frame(alignment: .center)
                    .font(appWideViewModel.getTitleFont())
            } else {
                Text(text)
                    .frame(alignment: .center)
                    .font(appWideViewModel.getTitleFont())
            }
                    
            
            SeperatorView()
        }
    }
}
