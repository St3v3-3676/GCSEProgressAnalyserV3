//
//  StudentResultDetailView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 08/03/2025.
//

import SwiftUI
import SwiftData

struct StudentResultDetailView: View {
    
    @State var studentResultDetail: ResultsData
    
    var body: some View {
        VStack {
            Circle()
                .fill(Color.purple)
                .frame(width: 350, height: 350)
                .shadow(radius: 20)
                .offset(y: 320)
            
            Circle()
                .fill(Color.purple)
                .frame(width: 350, height: 350)
                .shadow(radius: 20)
                .offset(y: 250)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 130)
                .foregroundStyle(.white)
                .shadow(radius: 10)
                .offset(y: -250)
            
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 250, height: 180)
                .foregroundStyle(.white)
                .shadow(radius: 10)
                .offset(y: -160)
            
            
            Text("Student Exam Records")
                .foregroundStyle(.black)
                .shadow(radius: 10)
                .offset(y: -630)
                .font(.title)
            
            Text("Student Details")
                .foregroundStyle(.black)
                .shadow(radius: 10)
                .offset(y: -610)
                .font(.title)
            
            Text("\(studentResultDetail.studentSurname), \(studentResultDetail.studentForename)")
                .font(.title2)
                .foregroundStyle(.black)
                .offset(y: -600)
            
            Text("Class : " + "\(studentResultDetail.studentClassName)")
                .font(.title2)
                .foregroundStyle(.black)
                .offset(y: -590)
        
            Text("Exam Result:")
                .font(.title)
                .foregroundStyle(.black)
                .shadow(radius: 10)
                .offset(y: -470)
            
            Text("Paper 1 Total : " +  "\(studentResultDetail.paper1TotalMarks)")
                .font(.title2)
                .foregroundStyle(.black)
                .offset(y: -460)
            
            Text("Paper 2 Total : " + "\(studentResultDetail.paper2TotalMarks)")
                .font(.title2)
                .foregroundStyle(.black)
                .offset(y: -450)
                
            Text("Grade : " + "\(studentResultDetail.grade)")
                .font(.title2)
                .foregroundStyle(.black)
                .offset(y: -440)
            

            
                
            
        }
    }
        
        
        
        
            
        
//        List {
//            Text("\(studentResultDetail.studentSurname), \(studentResultDetail.studentForename)")
//            Text("\(studentResultDetail.studentClassName)")
//            Text("\(studentResultDetail.examYear)")
//            Text("\(studentResultDetail.grade)")
//            Text("\(studentResultDetail.paper1TotalMarks)")
//            Text("\(studentResultDetail.paper2TotalMarks)")
//            Text("\(studentResultDetail.paper1Q1Marks)")
//            Text("\(studentResultDetail.paper1Q2Marks)")
//            Text("\(studentResultDetail.paper1Q3Marks)")
//            Text("\(studentResultDetail.paper1Q4Marks)")
//            Text("\(studentResultDetail.paper1Q5Marks)")
//            Text("\(studentResultDetail.paper2Q1Marks)")
//            Text("\(studentResultDetail.paper2Q2Marks)")
//            Text("\(studentResultDetail.paper2Q3Marks)")
//            Text("\(studentResultDetail.paper2Q4Marks)")
//            Text("\(studentResultDetail.paper2Q5Marks)")
//            Text("\(studentResultDetail.paper2Q6Marks)")
//        }
    
}

#Preview {
    StudentResultDetailView(studentResultDetail: ResultsData.init(id: UUID(), examMonth: "November", examYear: "2025", studentSurname: "Boyle", studentForename: "Stephen", studentClassName: "11A", paper1Q1Marks: "", paper1Q2Marks: "", paper1Q3Marks: "", paper1Q4Marks: "", paper1Q5Marks: "", paper1TotalMarks: "500", paper2Q1Marks: "100", paper2Q2Marks: "100", paper2Q3Marks: "100", paper2Q4Marks: "100", paper2Q5Marks: "100", paper2Q6Marks: "100", paper2TotalMarks: "500", grade: "9"))
}
