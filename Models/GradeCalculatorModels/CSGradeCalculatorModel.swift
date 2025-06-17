//
//  SubjectFormData.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 21/02/2025.
//

import Foundation
import SwiftUI


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

struct CSGradeCalculatorModel {
    var enteredFirstname: String = ""
    var enteredSurname: String = ""
    var enteredClassName: String = ""
    var enteredTargetGrade: String = ""

    var month: String = ""
    var year: String = ""
    var selectedMonth = "January"
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


}

struct CSGradeBoundariesAndTotalMarksModel {
    var gradeBoundaries2024: [Int: Int] = [0:0, 1:8, 2:21, 3:34, 4:47, 5:61, 6:76, 7:91, 8:105, 9:119]
    var gradeBoundaries2023: [Int: Int] = [0:0, 1:7, 2:20, 3:34, 4:48, 5:64, 6:80, 7:97, 8:112, 9:127]
    var gradeBoundaries2022: [Int: Int] = [0:0, 1:7, 2:19, 3:32, 4:45, 5:60, 6:76, 7:92, 8:107, 9:123]
}
    
    
    
        
        
                    
        

    


