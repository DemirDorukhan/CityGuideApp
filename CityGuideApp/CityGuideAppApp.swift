//
//  CityGuideAppApp.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

import SwiftUI

@main
struct CityGuideAppApp: App {
    
    @StateObject var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(modelData)
        }
    }
}
