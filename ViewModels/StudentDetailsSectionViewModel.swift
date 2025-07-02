//
//  StudentDetailsSectionViewModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 27/04/2025.
//

import Foundation
import Observation

@Observable
class StudentDetailsSectionViewModel {
    var selectedMonth = ""
    var selectedYear = ""
    var enteredFirstname: String = ""
    var enteredSurname: String = ""
    var enteredClassName: String = ""
    var enteredTargetGrade: String = ""
}
