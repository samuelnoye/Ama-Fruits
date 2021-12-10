//
//  Ama_FruitsApp.swift
//  Ama-Fruits
//
//  Created by Samuel Noye on 08/12/2021.
//

import SwiftUI

@main
struct Ama_FruitsApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
     
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnboardingView()
            } else {
                 ContentView()
            }
            
        }
    }
}
