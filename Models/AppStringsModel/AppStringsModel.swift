//
//  AppStringsModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//

import Foundation

enum TabBarLabelTexts {
    case homeTabText
    case gradeCalculatorTabText
    case ks3AnalyserTabText
    case ks4AnalyserTabText
    case toolsTabText
    case settingsTabText
    
    var labelText: String {
        switch self {
        case .homeTabText:
            return "Home"
        case .gradeCalculatorTabText:
            return "Grade Calculator"
        case .ks3AnalyserTabText:
            return "KS3 Analyser"
        case .ks4AnalyserTabText:
            return "KS4 Analyser"
        case .toolsTabText:
            return "Tools"
        case .settingsTabText:
            return "Settings"
        }
    }
}

enum ViewNameStrings {
    case studentDetails; case gradeBoundaries
    
    var viewName: String {
        switch self {
        case .studentDetails:
            return "student details"
        case .gradeBoundaries:
            return "grade boundaries"
        }
    }
}

enum TextStringTypes {
    case title
    case content
    case textField
    
    var type : String {
        switch self {
        case .title:
            return "title"
        case .content:
            return "content"
        case .textField:
            return "textField"
        }
    }
}

enum ViewTitleStrings {
    case appToolsViewTitle
    case gradeBoundaryViewerTitle
    case gradeCalculatorViewTitle
    case settingsViewTitle
    case studentDetailsSectionTitle
    
    var title: String {
        switch self {
        case .appToolsViewTitle:
            return "App Tools"
        case .gradeBoundaryViewerTitle:
            return "Grade Boundary Viewer"
        case .gradeCalculatorViewTitle:
            return "Grade Calculator"
        case .settingsViewTitle:
            return "Settings"
        case .studentDetailsSectionTitle:
            return "Enter Student Details:"
        }
    }
}
enum CalculatorInstructionsStrings: CaseIterable {
    case instructions1; case instructions2; case instructions3; case instructions4; case instructions5; case instructions6; case instructions7; case instructions8
    
    var instructiontext: String {
        switch self {
        case .instructions2:
            return "1. Select a subject. The corresponding marks section will appear."
        case .instructions3:
            return "2. Select a year to use that year's grade boundaries."
        case .instructions4:
            return "3. Enter the students details."
        case .instructions5:
            return "4. Select marks for each question or section on each exam paper."
        case .instructions6:
            return "5. Click the save button to save the student result."
        case .instructions7:
            return "Note: Calculator button will appear once all data is entered."
        case .instructions8:
            return "Note: Use the reset button to clear the form."
        case .instructions1:
            return "How to use the grade calculator:"
        }
    }
}

enum CalculatorLabelStrings: String, CaseIterable, Identifiable {
    
    case firstnameTextFieldLabel; case surnameTextFieldLabel; case classnameTextFieldLabel; case targetGradeTextFieldLabel
    
    var id: String {rawValue}
    
    var labelText: String {
        switch self {
        case .firstnameTextFieldLabel:
            return "First name:"
        case .surnameTextFieldLabel:
            return "Surname:"
        case .classnameTextFieldLabel:
            return "Class name:"
        case .targetGradeTextFieldLabel:
            return "Target grade:"
        }
    }
}

enum TextFieldPromptStrings {
    case firstnameTextFieldPrompt; case surnameTextFieldPrompt; case classnameTextFieldPrompt; case targetGradeTextFieldPrompt
    
    var promptText: String {
        switch self {
        case .firstnameTextFieldPrompt:
            return "Enter first name"
        case .surnameTextFieldPrompt:
            return "Enter surname"
        case .classnameTextFieldPrompt:
            return "Enter class name"
        case .targetGradeTextFieldPrompt:
            return "Enter target grade"
        }
    }
}

enum TextFieldNames: CaseIterable {
    case firstnameTextFieldName; case surnameTextFieldName; case classnameTextFieldName; case targetGradeTextFieldName

    var textFieldName: String {
        switch self {
        case .firstnameTextFieldName:
            return "firstname"
        case .surnameTextFieldName:
            return "surname"
        case .classnameTextFieldName:
            return "class name"
        case .targetGradeTextFieldName:
            return "target grade"
        }
    }
}

enum Months: CaseIterable {
    case January; case February; case March; case April; case May; case June; case July; case August; case September; case October; case November; case December
    
    var monthName: String {
        switch self {
        case .January:
            return "January"
        case .February:
            return "February"
        case .March:
            return "March"
        case .April:
            return "April"
        case .May:
            return "May"
        case .June:
            return "June"
        case .July:
            return "July"
        case .August:
            return "August"
        case .September:
            return "September"
        case .October:
            return "October"
        case .November:
            return "November"
        case .December:
            return "December"
        }
    }
}

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
            return "Physics"
        case .chemistry:
            return "Chemistry"
        case .biology:
            return "Biology"
        case .englishlanguage:
            return "English Lan"
        case .englishliterature:
            return "English Lit"
        case .cs:
            return "CS"
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
            return "Business"
        }
        
    }
}

enum QuestionLabelStrings: CaseIterable {
    case questionLabel1; case questionLabel2; case questionLabel3; case questionLabel4; case questionLabel5
    case questionLabel6;
    
    var questionLabelText: String {
        switch self {
        case .questionLabel1:
            return "Select Q1 total mark:"
        case .questionLabel2:
            return "Select Q2 total mark:"
        case .questionLabel3:
            return "Select Q3 total mark:"
        case .questionLabel4:
            return "Select Q4 total mark:"
        case .questionLabel5:
            return "Select Q5 total mark:"
        case .questionLabel6:
            return "Select Q6 total mark:"
        }
    }
}
struct AppStringsModel {
    var darkModeText = "Dark Mode On/Off"
    
    var subjects: [String] {
        return Subjects.allCases.map(\.displayName)
    }
    
    var months: [String] {
        return Months.allCases.map(\.monthName)
    }
    
    var yearText = "Enter year exam was sat:"
    var monthText = "Enter month exam was sat:"
    var gradeText: String = "Grade: "
    var yearPickerText: String = "Select a year:"
    var resultsHeaderText: String = "Total marks and grade:"
    
    let subjectText = "Select a subject"
    let boundaryText = "Select a grade boundary year"
    
    var gradeBoundaryYears: [String] = ["2024", "2023", "2022"]
}

struct CSAppStringsModel {
    var titleTextCSPaper1 = "Enter Paper 1 marks:"
    var titleTextCSPaper2 = "Enter Paper 2 marks:"
    var CStotalMarksP1Label = "Total marks Paper 1:"
    var totalMarksCSP1Text: String = "Total marks for paper 1: "
    var totalMarksCSP2Text: String = "Total marks for paper 2: "
    
    func getAllInstructions() -> [String] {
        return CalculatorInstructionsStrings.allCases.map {$0.instructiontext}
    }
}
