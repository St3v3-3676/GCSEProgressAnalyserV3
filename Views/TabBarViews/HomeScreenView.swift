//
//  HomeScreenView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.newBackgroundColourGradientStart, Color.white, Color.newBackgroundColorGradientEnd]), startPoint: .top, endPoint: .bottom)
            ZStack {
                Circle()
                    .frame(height: 380)
                    .foregroundStyle(Color.newBackgroundColorGradientEnd)
                    .offset(y: -150)
                    .shadow(radius: 10)
                
                Circle()
                    .frame(height: 380)
                    .foregroundStyle(Color.newBackgroundColourGradientStart)
                    .offset(y: 150)
                    .shadow(radius: 10)
                
                Image("AppLogoV5")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 380)
                    .shadow(radius: 10)
   

            }
        }
        .ignoresSafeArea()
    }
}


#Preview {
    HomeView()
        .environmentObject(CSGradeCalculatorViewModel())
}

