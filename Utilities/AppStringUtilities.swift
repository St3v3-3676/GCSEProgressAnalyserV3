//
//  name.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//
import SwiftUI

struct AppStringUtilities {
    func getLableText(textFieldName: String) -> String {
        if textFieldName == "firstname" {
            return CalculatorLabelStrings.firstnameTextFieldLabel.labelText
        } else if textFieldName == "surname" {
            return CalculatorLabelStrings.surnameTextFieldLabel.labelText
        } else if textFieldName == "class name" {
            return CalculatorLabelStrings.classnameTextFieldLabel.labelText
        } else {
            return CalculatorLabelStrings.targetGradeTextFieldLabel.labelText
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
