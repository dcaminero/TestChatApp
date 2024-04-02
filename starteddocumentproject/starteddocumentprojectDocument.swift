//
//  starteddocumentprojectDocument.swift
//  starteddocumentproject
//
//  Created by Daniel Caminero on 2/4/24.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var exampleText: UTType {
        UTType(importedAs: "com.example.plain-text")
    }
}

class starteddocumentprojectDocument: ObservableObject {
    @Published var text: String
    
    init(text: String = "Hello, world!") {
        self.text = text
    }
}
