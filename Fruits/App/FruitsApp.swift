//
//  FruitsApp.swift
//  Fruits
//
//  Created by Sarika on 18.03.22.
//

import SwiftUI

@main //@main serve as an entry point for the executation of the application
struct FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding : Bool = true //when user launches the app very first time it shows onboarding screen
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnBoardingView()
            }
            else {
                ContentView()
            }
        }
    }
}
