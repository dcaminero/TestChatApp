//
//  starteddocumentprojectApp.swift
//  starteddocumentproject
//
//  Created by Daniel Caminero on 2/4/24.
//

import SwiftUI

@main
struct starteddocumentprojectApp: App {
    @StateObject private var document = starteddocumentprojectDocument()
    // State variable to control whether to show the main view
    @State private var showMainView = false
    
    var body: some Scene {
        WindowGroup {
            if showMainView {
                // Show the main content view
                ContentView(document: document)
            } else {
                // Show the splash screen view
                SplashScreenView()
                    .onAppear {
                        // Simulate a delay of 2 seconds before transitioning to the main view
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            // Transition to the main view
                            withAnimation {
                                self.showMainView = true
                            }
                        }
                    }
            }
        }
    }
}
