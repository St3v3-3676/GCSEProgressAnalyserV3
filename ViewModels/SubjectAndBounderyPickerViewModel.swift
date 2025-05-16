//
//  SubjectAndBounderyPickerViewModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 03/05/2025.
//

import SwiftUI
import Observation

@Observable
class SubjectAndBoundaryPickerViewModel {
    let subjectText = SubjectAndBoundaryPickerModel.init().subjectText
    let boundaryText = SubjectAndBoundaryPickerModel.init().boundaryText
    
    let paddingValue = PaddingModel.init().paddingValue
    let paddingTopAlignment = PaddingModel.init().paddingTopAlignment
    let paddingBottomAlignment = PaddingModel.init().paddingBottomAlignment
        
    var selectedGradeBoundaryYear = "2024"
    var selectedSubject: String = "computer science"
}

