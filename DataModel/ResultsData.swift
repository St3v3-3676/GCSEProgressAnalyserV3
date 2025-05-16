//
//  ResultsData.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import Foundation
import SwiftData

@Model
class ResultsData: Identifiable {
    
    var id: UUID = UUID()
    var examMonth: String
    var examYear: String
    var studentSurname: String
    var studentForename: String
    var studentClassName: String
    var paper1Q1Marks: String
    var paper1Q2Marks: String
    var paper1Q3Marks: String
    var paper1Q4Marks: String
    var paper1Q5Marks: String
    var paper1TotalMarks: String
    var paper2Q1Marks: String
    var paper2Q2Marks: String
    var paper2Q3Marks: String
    var paper2Q4Marks: String
    var paper2Q5Marks: String
    var paper2Q6Marks: String
    var paper2TotalMarks: String
    var grade: String
    
    init(id:UUID ,examMonth: String, examYear: String, studentSurname: String, studentForename: String, studentClassName: String, paper1Q1Marks: String, paper1Q2Marks: String, paper1Q3Marks: String, paper1Q4Marks: String, paper1Q5Marks: String, paper1TotalMarks: String, paper2Q1Marks: String, paper2Q2Marks: String, paper2Q3Marks: String, paper2Q4Marks: String, paper2Q5Marks: String, paper2Q6Marks: String, paper2TotalMarks: String, grade: String) {
        
        self.id = id
        self.examMonth = examMonth
        self.examYear = examYear
        self.studentSurname = studentSurname
        self.studentForename = studentForename
        self.studentClassName = studentClassName
        self.paper1Q1Marks = paper1Q1Marks
        self.paper1Q2Marks = paper1Q2Marks
        self.paper1Q3Marks = paper1Q3Marks
        self.paper1Q4Marks = paper1Q4Marks
        self.paper1Q5Marks = paper1Q5Marks
        self.paper1TotalMarks = paper1TotalMarks
        self.paper2Q1Marks = paper2Q1Marks
        self.paper2Q2Marks = paper2Q2Marks
        self.paper2Q3Marks = paper2Q3Marks
        self.paper2Q4Marks = paper2Q4Marks
        self.paper2Q5Marks = paper2Q5Marks
        self.paper2Q6Marks = paper2Q6Marks
        self.paper2TotalMarks = paper2TotalMarks
        self.grade = grade
    }
}
