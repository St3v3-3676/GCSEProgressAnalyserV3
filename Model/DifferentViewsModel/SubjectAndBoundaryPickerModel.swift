//
//  SubjectPickerViewData.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 22/02/2025.
//

import Foundation
enum Subjects: String, CaseIterable {
    case maths
    case physics
    case chemistry
    case biology
    case englishlanguage
    case englishliterature
    case cs
    case french
    case spanish
    case history
    case geography
    case rpe
    case drama
    case music
    case art
    case pe
    case btecsport
    case businessandenterprise
    
    var displayName: String {
        switch self {
        case .maths:
            return "Maths"
        case .physics:
            return "Science (Physics)"
        case .chemistry:
            return "Science (Chemistry)"
        case .biology:
            return "Science (Biology)"
        case .englishlanguage:
            return "English Language"
        case .englishliterature:
            return "English Literature"
        case .cs:
            return "Computer Science"
        case .french:
            return "French"
        case .spanish:
            return "Spanish"
        case .history:
            return "History"
        case .geography:
            return "Geography"
        case .rpe:
            return "RPE"
        case .drama:
            return "Drama"
        case .music:
            return "Music"
        case .art:
            return "Art"
        case .pe:
            return "PE"
        case .btecsport:
            return "BTEC Sport"
        case .businessandenterprise:
            return "Business & Enterprise"
        }
        
    }
}
struct SubjectAndBoundaryPickerModel {
    let subjectText = "Select a subject"
    let boundaryText = "Select a grade boundary year"
    
    var gradeBoundaryYears: [String] = ["2024", "2023", "2022"]
    var selectedGradeBoundaryYear: String = "2024"
    var selectedSubject: String = "Computer Science"
    
    var subjects: [String] {
        return Subjects.allCases.map(\.displayName)
    }
}

