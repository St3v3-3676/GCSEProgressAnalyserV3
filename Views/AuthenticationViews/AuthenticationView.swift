//
//  AppAuthenticationView.swift
//  Progress Analyser
//
//  Created by Stephen Boyle on 06/03/2025.
//

import SwiftUI
import LocalAuthentication

struct AuthenticationView: View {
    @EnvironmentObject private var calculatorFormViewModel: CSGradeCalculatorViewModel
    @State private var isAuthenticated: Bool = false
    @State var darkModeEnabled: Bool = false
    @State private var message = "Please authenticate"
    var body: some View {
        ZStack {
            Color.blue.edgesIgnoringSafeArea(.all)
            if isAuthenticated {
                ContentView()
            }
            else {
                Text("Authenticating...............")
                    .font(.largeTitle)
                    .offset(y: -250)
                Image("App Logo")
                    .resizable()
                    .scaledToFit()
                Button {
                    authenticate()
                } label: {
                    
                }
            }
        }
        .onAppear(perform: authenticate)
        .ignoresSafeArea(edges: .all)
        
    }
    func authenticate() {
        let context = LAContext()
        var error: NSError?
        
        //Check if faceID is available
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            
            //The reason why faceID is being used
            let reason = "Log in using Face or Touch ID"
            
            //This controls what happens if faceID is successful or not. If faceID is not available the device passcode
            //is the fallback as this uses .deviceOwnerAuthentication
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, error in
                if success {
                    isAuthenticated = true
                        
                } else {
                    print("Error: \(String(describing: error))")
                    message = error!.localizedDescription
                }
            }
        } else {
            //This is what will happen if faceID is not available
        }
            
    }
}

#Preview {
    AuthenticationView()
        .environmentObject(CSGradeCalculatorViewModel())
        .environment(StudentDetailsSectionViewModel())
        .environment(GradeBoundarySelectionViewModel())
}
