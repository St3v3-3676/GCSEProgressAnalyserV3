//
//  PaddingModel 2.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/05/2025.
//
import Foundation
import SwiftUI

struct PaddingUtilities {
    func getTextFieldPaddingValue(textFieldName: String ) -> CGFloat {
        let textFieldPaddingAdjustmentStandardScreen: CGFloat = 30
        let textFieldPaddingAdjustmentLargeScreen: CGFloat = 60
        let textFieldPaddingAdjustmentExtraLargeScreen: CGFloat = 45
        
        if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.extraSmall.screenWidth {
            if textFieldName == "firstname" {
                return TextFieldPaddingValues.medium.paddingValue
            } else if textFieldName == "surname" {
                return TextFieldPaddingValues.large.paddingValue
            } else if textFieldName == "class name" {
                return TextFieldPaddingValues.small.paddingValue
            } else {
                return TextFieldPaddingValues.extraSmall.paddingValue
            }
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.standard.screenWidth {
            if textFieldName == "firstname" {
                return TextFieldPaddingValues.medium.paddingValue + textFieldPaddingAdjustmentStandardScreen
            } else if textFieldName == "surname" {
                return TextFieldPaddingValues.large.paddingValue + textFieldPaddingAdjustmentStandardScreen
            } else if textFieldName == "class name" {
                return TextFieldPaddingValues.extraSmall.paddingValue + textFieldPaddingAdjustmentStandardScreen
            } else {
                return TextFieldPaddingValues.extraSmall.paddingValue + textFieldPaddingAdjustmentStandardScreen - 10
            }
        } else if ScreenDimensionsUtilitites.init().getScreenWidth() <= PhoneScreenWidths.large.screenWidth{
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
    
}
