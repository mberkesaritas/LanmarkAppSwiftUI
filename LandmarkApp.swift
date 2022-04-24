//
//  DevAppleOneApp.swift
//  DevAppleOne
//
//  Created by Berke Sarıtaş on 24.04.2022.
//

import SwiftUI

@main
struct LandmarkApp: App {
    
    @StateObject private var modelData = ModelData()

    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
