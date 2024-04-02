//
//  starteddocumentprojectApp.swift
//  starteddocumentproject
//
//  Created by Daniel Caminero on 2/4/24.
//

import SwiftUI

@main
struct starteddocumentprojectApp: App {
    var body: some Scene {
        DocumentGroup(newDocument: starteddocumentprojectDocument()) { file in
            ContentView(document: file.$document)
        }
    }
}
