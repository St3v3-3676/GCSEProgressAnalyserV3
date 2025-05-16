//
//  CalculatorFormViewModel.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 22/02/2025.
//

import Foundation
import SwiftUI

class GradeCalculatorViewModel: ObservableObject, Identifiable {
    var titleText: String = ViewTitles.gradeCalculatorViewTitle.title

    @Published var selectedSubject = Subjects.cs.displayName
    @Published var selectedGradeBoundaryYear = "2024"
    @Published var gradeBoundaries: [Int:Int] = CSGradeBoundariesAndTotalMarksModel.init().gradeBoundaries2024
    
    var sectionText: String = ""
    var marksText: String = ""
    
    var buttonText: String = ""
    
    var resetButtonText: String = ""
    
    //These are used to record the student marks entered in the form.
    @Published var paper1Q1Marks: String = GradeCalculatorModel.init().paper1Q1Marks
    @Published var paper1Q2Marks: String = GradeCalculatorModel.init().paper1Q2Marks
    @Published var paper1Q3Marks: String = GradeCalculatorModel.init().paper1Q3Marks
    @Published var paper1Q4Marks: String = GradeCalculatorModel.init().paper1Q4Marks
    @Published var paper1Q5Marks: String = GradeCalculatorModel.init().paper1Q5Marks
    
    @Published var paper2Q1Marks: String = GradeCalculatorModel.init().paper2Q1Marks
    @Published var paper2Q2Marks: String = GradeCalculatorModel.init().paper2Q2Marks
    @Published var paper2Q3Marks: String = GradeCalculatorModel.init().paper2Q3Marks
    @Published var paper2Q4Marks: String = GradeCalculatorModel.init().paper2Q4Marks
    @Published var paper2Q5Marks: String = GradeCalculatorModel.init().paper2Q5Marks
    @Published var paper2Q6Marks: String = GradeCalculatorModel.init().paper2Q6Marks
    
    @Published var totalMarksP1: String = GradeCalculatorModel.init().totalMarksP1
    @Published var totalMarksP2: String = GradeCalculatorModel.init().totalMarksP2
    @Published var totalMarks: String = GradeCalculatorModel.init().totalMarks
    @Published var grade: String = GradeCalculatorModel.init().grade
 
    @Published var yearPickerText: String = GradeCalculatorModel.init().yearPickerText
    @Published var resultsHeaderText: String = GradeCalculatorModel.init().resultsHeaderText
    @Published var totalMarksP1Text: String = GradeCalculatorModel.init().totalMarksP1Text
    @Published var totalMarksP2Text: String = GradeCalculatorModel.init().totalMarksP2Text
    @Published var gradeText: String = GradeCalculatorModel.init().gradeText
    
    //**************************************************//
    //THESE ARE THE SUBPROGRAMS FOR THE GRADE CALCULATOR//
    //**************************************************//    
    func setButtonText(textString: String) {
        self.buttonText = textString
    }
    
    func setSectionText(textString: String) {
        self.sectionText = textString
    }
    
    func setMarksText(textString: String) {
        self.marksText = textString
    }
    
    func getCSPaper1TotalMarks() -> [Int] {
        var paper1TotalQuestionMarks: [Int] = []
        if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2022" {
            paper1TotalQuestionMarks = CSTotalMarks2022.paper1.totalMarks
        } else if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2023" {
            paper1TotalQuestionMarks = CSTotalMarks2023.paper1.totalMarks
        } else if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2024" {
            paper1TotalQuestionMarks = CSTotalMarks2024.paper1.totalMarks
        }
        
        return paper1TotalQuestionMarks
    }
    
    func getPaper2TotalMarks() -> [Int] {
        var paper2TotalQuestionMarks: [Int] = []
        if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2022" {
            paper2TotalQuestionMarks = CSTotalMarks2022.paper2.totalMarks
        } else if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2023" {
            paper2TotalQuestionMarks = CSTotalMarks2023.paper2.totalMarks
        } else if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2024" {
            paper2TotalQuestionMarks = CSTotalMarks2024.paper2.totalMarks
        }
        return paper2TotalQuestionMarks
    }
    func insertStudentData() -> ResultsData {
        let studentResult = ResultsData(id: UUID(), examMonth: StudentDetailsSectionViewModel.init().selectedMonth, examYear: GradeCalculatorModel.init().selectedYear, studentSurname: GradeCalculatorModel.init().enteredSurname, studentForename: GradeCalculatorModel.init().enteredFirstname, studentClassName: GradeCalculatorModel.init().enteredClassName, paper1Q1Marks: self.paper1Q1Marks, paper1Q2Marks: self.paper1Q2Marks, paper1Q3Marks: self.paper1Q3Marks, paper1Q4Marks: self.paper1Q4Marks, paper1Q5Marks: self.paper1Q5Marks, paper1TotalMarks: self.totalMarksP1, paper2Q1Marks: self.paper2Q1Marks, paper2Q2Marks: self.paper2Q2Marks, paper2Q3Marks: self.paper2Q3Marks, paper2Q4Marks: self.paper2Q4Marks, paper2Q5Marks: self.paper2Q5Marks, paper2Q6Marks: self.paper2Q6Marks, paper2TotalMarks: self.totalMarksP2, grade: self.grade)
        
        return studentResult
    }

    func resetForm() {
        self.grade = "U"
        self.totalMarksP1 = "0"
        self.totalMarksP2 = "0"
        self.totalMarks = "0"
        self.paper1Q1Marks = ""
        self.paper1Q2Marks = ""
        self.paper1Q3Marks = ""
        self.paper1Q4Marks = ""
        self.paper1Q5Marks = ""
        
        self.paper2Q1Marks = ""
        self.paper2Q2Marks = ""
        self.paper2Q3Marks = ""
        self.paper2Q4Marks = ""
        self.paper2Q5Marks = ""
        self.paper2Q6Marks = ""
        
    }
    
    func calculateTotalMarksPaper1() {
        var total: Int = 0
    
        total += Int(self.paper1Q1Marks) ?? 0
        total += Int(self.paper1Q2Marks) ?? 0
        total += Int(self.paper1Q3Marks) ?? 0
        total += Int(self.paper1Q4Marks) ?? 0
        total += Int(self.paper1Q5Marks) ?? 0
        
        self.totalMarksP1 = String(total)
    }
    
    func calculateTotalMarksPaper2() {
        var total: Int = Int(self.paper2Q1Marks) ?? 0
        total += Int(self.paper2Q2Marks) ?? 0
        total += Int(self.paper2Q3Marks) ?? 0
        total += Int(self.paper2Q4Marks) ?? 0
        total += Int(self.paper2Q5Marks) ?? 0
        total += Int(self.paper2Q6Marks) ?? 0
        
        totalMarksP2 = String(total)
    }
    
    func calculateTotalMarks() {
        var total = 0
        total += Int(self.totalMarksP1) ?? 0
        total += Int(self.totalMarksP2) ?? 0
        
        self.totalMarks = String(total)
    }
    
    func calculateGrade(year: String) {
        var total = 0
        total += Int(self.totalMarksP1) ?? 0
        total += Int(totalMarksP2) ?? 0
        if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2024" {
            let gradeBoundaries = CSGradeBoundariesAndTotalMarksModel().gradeBoundaries2024
            if total >= gradeBoundaries[9]! {
                grade = "9"
                print(grade)
            }else if total >= gradeBoundaries[8]! {
                grade = "8"
                print(grade)
            }else if total >= gradeBoundaries[7]! {
                grade = "7"
                print(grade)
            }else if total >= gradeBoundaries[6]! {
                grade = "6"
                print(grade)
            }else if total >= gradeBoundaries[5]! {
                grade = "5"
                print(grade)
            }else if total >= gradeBoundaries[4]! {
                grade = "4"
                print(grade)
            }else if total >= gradeBoundaries[3]! {
                grade = "3"
                print(grade)
            }else if total >= gradeBoundaries[2]! {
                grade = "2"
                print(grade)
            }else if total >= gradeBoundaries[1]! {
                grade = "1"
                print(grade)
            }else {
                grade = "U"
                print(grade)
            }
        }else if SubjectAndBoundaryPickerModel.init().selectedGradeBoundaryYear == "2023" {
            let gradeBoundaries = CSGradeBoundariesAndTotalMarksModel().gradeBoundaries2023
            if total >= gradeBoundaries[9]! {
                grade = "9"
                print(grade)
            }else if total >= gradeBoundaries[8]! {
                grade = "8"
                print(grade)
            }else if total >= gradeBoundaries[7]! {
                grade = "7"
                print(grade)
            }else if total >= gradeBoundaries[6]! {
                grade = "6"
                print(grade)
            }else if total >= gradeBoundaries[5]! {
                grade = "5"
                print(grade)
            }else if total >= gradeBoundaries[4]! {
                grade = "4"
                print(grade)
            }else if total >= gradeBoundaries[3]! {
                grade = "3"
                print(grade)
            }else if total >= gradeBoundaries[2]! {
                grade = "2"
                print(grade)
            }else if total >= gradeBoundaries[1]! {
                grade = "1"
                print(grade)
            }else {
                grade = "U"
                print(grade)
            }
        }else {
            let gradeBoundaries = CSGradeBoundariesAndTotalMarksModel().gradeBoundaries2022
            if total >= gradeBoundaries[9]! {
                grade = "9"
                print(grade)
            }else if total >= gradeBoundaries[8]! {
                grade = "8"
                print(grade)
            }else if total >= gradeBoundaries[7]! {
                grade = "7"
                print(grade)
            }else if total >= gradeBoundaries[6]! {
                grade = "6"
                print(grade)
            }else if total >= gradeBoundaries[5]! {
                grade = "5"
                print(grade)
            }else if total >= gradeBoundaries[4]! {
                grade = "4"
                print(grade)
            }else if total >= gradeBoundaries[3]! {
                grade = "3"
                print(grade)
            }else if total >= gradeBoundaries[2]! {
                grade = "2"
                print(grade)
            }else if total >= gradeBoundaries[1]! {
                grade = "1"
                print(grade)
            }else {
                grade = "U"
                print(grade)
            }
        }
    }
    
    func getGradeBoundaries() {
        if selectedGradeBoundaryYear == "2024" && self.selectedSubject == "Computer Science"{
            self.gradeBoundaries =  CSGradeBoundariesAndTotalMarksModel().gradeBoundaries2024
        } else if selectedGradeBoundaryYear == "2023" && self.selectedSubject == "Computer Science"{
            self.gradeBoundaries = CSGradeBoundariesAndTotalMarksModel().gradeBoundaries2023
        } else if selectedGradeBoundaryYear == "2022" && self.selectedSubject == "Computer Science"{
            self.gradeBoundaries = CSGradeBoundariesAndTotalMarksModel().gradeBoundaries2022
        }
    }
    
    func displayQuestionMarks(paperNumber: Int, questionNumber: Int) -> String {
        var selectedMark: String = ""
        if paperNumber == 1 && questionNumber == 1{
            selectedMark = self.paper1Q1Marks
        } else if paperNumber == 1 && questionNumber == 2{
            selectedMark = self.paper1Q2Marks
        } else if paperNumber == 1 && questionNumber == 3{
            selectedMark = self.paper1Q3Marks
        } else if paperNumber == 1 && questionNumber == 4{
            selectedMark = self.paper1Q4Marks
        } else {
            selectedMark = self.paper1Q5Marks
        }
        
        return selectedMark
    }
}


    




    

