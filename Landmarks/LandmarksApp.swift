//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by HEIDER B SILVEIRA on 27/04/23.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
