//
//  landmarkAppApp.swift
//  landmarkApp
//
//  Created by Can Babaoğlu on 6.05.2022.
//

import SwiftUI

@main
struct landmarkAppApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
