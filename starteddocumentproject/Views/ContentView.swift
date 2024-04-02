//
//  ContentView.swift
//  starteddocumentproject
//
//  Created by Daniel Caminero on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var document: starteddocumentprojectDocument
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: ChatView()) {
                    Text("Go to Chat View")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(document: starteddocumentprojectDocument())
    }
}
