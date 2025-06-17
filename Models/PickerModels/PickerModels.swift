//
//  SubjectPickerViewData.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 22/02/2025.
//

import Foundation
import SwiftUI

struct SubjectPickerModel {
    var selectedGradeBoundaryYear: String = "2024"
    var selectedSubject: String = "Computer Science"
    
    var subjects: [String] {
        return Subjects.allCases.map(\.displayName)
    }
}

