//
//  HomeScreenView.swift
//  GCSEProgressAnalyser
//
//  Created by Stephen Boyle on 17/03/2025.
//

import SwiftUI

struct HomeView: View {
    @Environment(AppWideViewModel.self) var appWideViewModel
    var body: some View {
        ZStack {
            Image(Images.yellowLogo.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(radius: ShadowRadiusValues.large.radiusValue)
                .padding(10)
                .position(x: appWideViewModel.getScreenWidth() / 2, y: appWideViewModel.getScreenHeight() * 0.25)
 
            
            
            Image(Images.redLogo.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(radius: ShadowRadiusValues.large.radiusValue)
                .padding(10)
                .position(x: appWideViewModel.getScreenWidth() / 2, y: appWideViewModel.getScreenHeight() * 0.57)

            
            Image(Images.appLogo.imageName)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .shadow(radius: ShadowRadiusValues.large.radiusValue)
                .padding(10)
                .position(x: appWideViewModel.getScreenWidth() / 2, y: appWideViewModel.getScreenWidth() / 1.1)
            

        }
    }
}

#Preview {
    HomeView()
        .environmentObject(GradeCalculatorViewModel())
        .environment(AppWideViewModel())
}
