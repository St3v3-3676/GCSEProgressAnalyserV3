//
//  MonthPicker.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 19/05/2025.
//
import SwiftUI

struct ExamMonthPickerView: View {
    @Bindable var studentSectionViewModel = StudentDetailsSectionViewModel()
    
    var body: some View {
        VStack {
            Text("Select a month exam was sat:")
                .font(.title2)
                .padding(.bottom, -10)
            
            Picker("", selection: $studentSectionViewModel.selectedMonth) {
                ForEach(AppStringsModel.init().months, id: \.self) { month in
                    Text(month)
                }
            }
            
            Text("Selected month : \(studentSectionViewModel.selectedMonth)")
                .foregroundStyle(.purpleFontColour)
                .fontWeight(.semibold)
            
            Divider()
                .frame(height: 2)
                .background(Color.black)
        }
        .padding(.bottom, 15)
    }
}


  
