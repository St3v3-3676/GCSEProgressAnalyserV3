//
//  ExamDataPickerView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 28/04/2025.
//

import SwiftUI

struct ExamDatePickerView: View {
    @EnvironmentObject var calculatorViewModel: CSGradeCalculatorViewModel
    @Environment(StudentDetailsSectionViewModel.self) var studentDetailsSectionViewModel
    
    @Bindable var studentSectionViewModel = StudentDetailsSectionViewModel()
    
    var isMonthPicker: Bool
    
    var body: some View {
        let font = FontUtilities.init().getContentFont()
        VStack {
            if isMonthPicker {
                Text("Select a month exam was sat:")
                    .font(font)
                    .padding(.bottom, -10)
                    .padding(.top, 10)
                
                Picker("", selection: $studentSectionViewModel.selectedMonth) {
                    ForEach(AppStringsModel.init().months, id: \.self) { months in
                        Text(months)
                    }
                }
                .accessibilityLabel("Select a month exam was sat")
                .accessibilityAddTraits(.isHeader)
            } else {
  
                    Text("Select a year exam was sat:")
                        .font(font)
                        .padding(.bottom, -10)
                        .padding(.top, 10)
                    
                Picker("", selection: $studentSectionViewModel.selectedYear) {
                    ForEach(AppStringsModel.init().gradeBoundaryYears, id: \.self) { years in
                            Text(years)
                        }
                    }
                    .accessibilityLabel("Select a year exam wads sat:")
                    .accessibilityAddTraits(.isHeader)
                
            }
        }
        .padding(PaddingModel.init().paddingBottomAlignment, PaddingModel.init().paddingValue)
    }
}

#Preview {
    ExamDatePickerView(isMonthPicker: false)
        .environmentObject(CSGradeCalculatorViewModel())
}
