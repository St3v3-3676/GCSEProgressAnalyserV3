//
//  CustomExamMarksPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 10/04/2025.
//

import SwiftUI

import SwiftUI
 //DO NOT DELETE - CURRENTLY IN USE
 struct CustomExamMarksPickerStyle: ViewModifier {
     @Environment(\.colorScheme) var colorScheme
 
     func body (content: Content) -> some View {
         if UIDevice.current.name == "iPad" {
             content
                 .font(.system(size: 25, weight: .bold, design: .default))
                 .offset(x: -50)
 
         } else {
             if colorScheme == .dark {
                 content
                     .font(.system(size: 25, weight: .bold, design: .default))
                     .offset(x: -50)
                     .foregroundStyle(.orange)
             } else {
                 content
                     .font(.system(size: 25, weight: .bold, design: .default))
                     .offset(x: -50)
                     .foregroundStyle(.cyan)
             }
 
         }
     }
 }
 
 extension View {
     public func customExamMarksPickerStyle() -> some View {
         modifier(CustomExamMarksPickerStyle())
     }
 }
 
 struct CustomExamMarksPickerView<Content: View>: View {
     @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
 
     let content: Content
 
     init(@ViewBuilder content: () -> Content) {
         self.content = content()
     }
     var body: some View {
         Menu {
             content
         } label: {
             Image(systemName: "chevron.down.square.fill")
                 .font(.system(size: 30))
         }
         .modifier(CustomExamMarksPickerStyle())
     }
 }
