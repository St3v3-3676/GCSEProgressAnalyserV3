//
//  StudentsResultsFilesView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI
import SwiftData

struct CSStudentsResultsFilesView: View {
    @Environment(\.modelContext) private var managedContext
    @Query(sort: \ResultsData.studentSurname) private var students: [ResultsData]
    
    @State private var searchText: String = ""
    
    var body: some View {
        List {
            ForEach(students) { studentResult in
                let displayText = "\(studentResult.studentSurname), \(studentResult.studentForename), \(studentResult.examMonth), \(studentResult.examYear)"
                
                NavigationLink(displayText,destination: IndividualStudentResultDetailView(studentResultDetail: studentResult))
            }
            .onDelete(perform: deleteStudent)
        }
        .searchable(text: $searchText, prompt: "Enter a name to search for")
    }
    
    private func deleteStudent(at indexSet: IndexSet) {
        for index in indexSet {
            managedContext.delete(students[index])
        }
    }
}
#Preview {
    CSStudentsResultsFilesView()
        .modelContainer(for: ResultsData.self)
}
