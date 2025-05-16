//
//  SubjectFormData.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 21/02/2025.
//

import Foundation
import SwiftUI

enum InstructionsText {
    case instructions1; case instructions2; case instructions3; case instructions4; case instructions5; case instructions6; case instructions7
    
    var instructiontext: String {
        switch self {
        case .instructions1:
            return "1. Select a subject. The corresponding marks section will appear."
        case .instructions2:
            return "2. Select a year to use that year's grade boundaries."
        case .instructions3:
            return "3. Enter the students details."
        case .instructions4:
            return "4. Select marks for each question or section on each exam paper."
        case .instructions5:
            return "5. Click the save button to save the student result."
        case .instructions6:
            return "Note: Calculator button will appear once all data is entered."
        case .instructions7:
            return "Note: Use the reset button to clear the form."
        }
    }
}
enum CSQuestionNumbers {
    case q1; case q2; case q3; case q4; case q5; case q6;
    
    var questionNumber: Int {
        switch self {
        case .q1:
            return 1
        case .q2:
            return 2
        case .q3:
            return 3
        case .q4:
            return 4
        case .q5:
            return 5
        case .q6:
            return 6
        }
    }
}

enum CSpaperNumbers {
    case paper1; case paper2
    
    var paperNumber: Int {
        switch self {
        case .paper1:
            return 1
        case .paper2:
            return 2
        }
    }
}

enum CSTotalMarks2022 {
    case paper1; case paper2
    
    var totalMarks: [Int] {
        switch self {
        case .paper1:
            return [13,18,16,10,18]
        case .paper2:
            return [10,10,10,15,15,15]
        }
    }
}

enum CSTotalMarks2023 {
    case paper1; case paper2
    
    var totalMarks: [Int] {
        switch self {
        case .paper1:
            return [15,12,9,20,19]
        case .paper2:
            return [7,8,15,15,15,15]
        }
    }
}

enum CSTotalMarks2024 {
    case paper1; case paper2
    
    var totalMarks: [Int] {
        switch self {
        case .paper1:
            return [16,16,14,17,12]
        case .paper2:
            return [10,10,10,15,15,15]
        }
    }
}

enum CalculatorLabels {
    case firstnameTextFieldLabel; case surnameTextFieldLabel; case classnameTextFieldLabel; case targetGradeTextFieldLabel
    
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

enum TextFieldPrompts {
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

enum TextFieldNames {
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

struct GradeCalculatorModel {
    var enteredFirstname: String = ""
    var enteredSurname: String = ""
    var enteredClassName: String = ""
    var enteredTargetGrade: String = ""
    
    var titleTextPaper1 = "Enter Paper 1 marks:"
    var titleTextPaper2 = "Enter Paper 2 marks:"
    
    var questionQ1Label = "Enter Q1 marks:"
    var questionQ2Label = "Enter Q2 marks:"
    var questionQ3Label = "Enter Q3 marks:"
    var questionQ4Label = "Enter Q4 marks:"
    var questionQ5Label = "Enter Q5 marks:"
    var questionQ6Label = "Enter Q6 marks:"
    var totalMarksP1Label = "Total marks Paper 1:"
    
    var month: String = ""
    var year: String = ""
    
    var months: [String] {
        return Months.allCases.map(\.monthName)
    }
    
    var monthText = "Enter month exam was sat:"
    var selectedMonth = "January"
    var yearText = "Enter year exam was sat:"
    var selectedYear: String = "2022"

    var paper1Q1Marks: String = ""
    var paper1Q2Marks: String = ""
    var paper1Q3Marks: String = ""
    var paper1Q4Marks: String = ""
    var paper1Q5Marks: String = ""
    
    var paper2Q1Marks: String = ""
    var paper2Q2Marks: String = ""
    var paper2Q3Marks: String = ""
    var paper2Q4Marks: String = ""
    var paper2Q5Marks: String = ""
    var paper2Q6Marks: String = ""
    
    
    var totalMarksP1: String = "0"
    var totalMarksP2: String = "0"
    var totalMarks: String = "0"
    var grade: String = "0"
    var totalMarksP1Text: String = "Total marks for paper 1: "
    var totalMarksP2Text: String = "Total marks for paper 2: "
    var gradeText: String = "Grade: "
    
    var yearPickerText: String = "Select a year:"
    var resultsHeaderText: String = "Total marks and grade:"
}

struct CSGradeBoundariesAndTotalMarksModel {
    var gradeBoundaries2024: [Int: Int] = [0:0, 1:8, 2:21, 3:34, 4:47, 5:61, 6:76, 7:91, 8:105, 9:119]
    var gradeBoundaries2023: [Int: Int] = [0:0, 1:7, 2:20, 3:34, 4:48, 5:64, 6:80, 7:97, 8:112, 9:127]
    var gradeBoundaries2022: [Int: Int] = [0:0, 1:7, 2:19, 3:32, 4:45, 5:60, 6:76, 7:92, 8:107, 9:123]
}
    
    
    
        
        
                    
        

    


