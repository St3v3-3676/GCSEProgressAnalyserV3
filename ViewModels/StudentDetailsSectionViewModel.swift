//
//  StudentDetailsSectionViewModel.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 27/04/2025.
//

import Foundation
import Observation

@Observable
class StudentDetailsSectionViewModel: AppWideViewModel {
    var selectedMonth = GradeCalculatorModel.init().selectedMonth
    var selectedYear = GradeCalculatorModel.init().selectedYear
    var enteredFirstname: String = ""
    var enteredSurname: String = ""
    var enteredClassName: String = ""
    var enteredTargetGrade: String = ""
    

    func getTextFieldPaddingValue(textFieldName: String ) -> CGFloat {
        let textFieldPaddingAdjustmentStandardScreen: CGFloat = 30
        let textFieldPaddingAdjustmentLargeScreen: CGFloat = 60
        let textFieldPaddingAdjustmentExtraLargeScreen: CGFloat = 45
        
        if self.getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            if textFieldName == "firstname" {
                return TextFieldPaddingValues.medium.paddingValue
            } else if textFieldName == "surname" {
                return TextFieldPaddingValues.large.paddingValue
            } else if textFieldName == "class name" {
                return TextFieldPaddingValues.small.paddingValue
            } else {
                return TextFieldPaddingValues.extraSmall.paddingValue
            }
        } else if self.getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            if textFieldName == "firstname" {
                return TextFieldPaddingValues.medium.paddingValue + textFieldPaddingAdjustmentStandardScreen
            } else if textFieldName == "surname" {
                return TextFieldPaddingValues.large.paddingValue + textFieldPaddingAdjustmentStandardScreen
            } else if textFieldName == "class name" {
                return TextFieldPaddingValues.extraSmall.paddingValue + textFieldPaddingAdjustmentStandardScreen
            } else {
                return TextFieldPaddingValues.extraSmall.paddingValue + textFieldPaddingAdjustmentStandardScreen - 10
            }
        } else if self.getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
            if textFieldName == "firstname" {
                return TextFieldPaddingValues.medium.paddingValue + textFieldPaddingAdjustmentLargeScreen
            } else if textFieldName == "surname" {
                return TextFieldPaddingValues.large.paddingValue + textFieldPaddingAdjustmentLargeScreen
            } else if textFieldName == "class name" {
                return TextFieldPaddingValues.extraSmall.paddingValue + textFieldPaddingAdjustmentLargeScreen
            } else {
                return TextFieldPaddingValues.extraSmall.paddingValue + textFieldPaddingAdjustmentLargeScreen - 10
            }
        } else {
            if textFieldName == "firstname" {
                return TextFieldPaddingValues.large.paddingValue + textFieldPaddingAdjustmentExtraLargeScreen
            } else if textFieldName == "surname" {
                return TextFieldPaddingValues.large.paddingValue + textFieldPaddingAdjustmentExtraLargeScreen + 20
            } else if textFieldName == "class name" {
                return TextFieldPaddingValues.medium.paddingValue + textFieldPaddingAdjustmentExtraLargeScreen + 10
            } else {
                return TextFieldPaddingValues.medium.paddingValue + textFieldPaddingAdjustmentExtraLargeScreen
            }
        }
    }
    
    func getLableText(textFieldName: String) -> String {
        if textFieldName == "firstname" {
            return CalculatorLabels.firstnameTextFieldLabel.labelText
        } else if textFieldName == "surname" {
            return CalculatorLabels.surnameTextFieldLabel.labelText
        } else if textFieldName == "class name" {
            return CalculatorLabels.classnameTextFieldLabel.labelText
        } else {
            return CalculatorLabels.targetGradeTextFieldLabel.labelText
        }
    }
    
    func getLabelImage(labelImageName: String) -> String {
        if labelImageName == "firstname" {
            return Images.firstnameTextLabelImage.imageName
        } else if labelImageName == "surname" {
            return Images.surnameTextFieldLabelImage.imageName
        } else if labelImageName == "class name" {
            return Images.classNameTextFieldLabelImage.imageName
        } else {
            return Images.targetGradeTextFieldLabelImage.imageName
        }
    }
}
