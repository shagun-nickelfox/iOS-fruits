//
//  FructusApp.swift
//  Fructus
//
//  Created by Nickelfox on 12/12/23.
//

import SwiftUI

@main
struct FructusApp: App {
    
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if(isOnBoarding){
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
