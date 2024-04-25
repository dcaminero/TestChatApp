//
//  ContentView.swift
//  starteddocumentproject
//
//  Created by Daniel Caminero on 2/4/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var navigationSelection: Int? = 0
    
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink("Go", destination: ContentView(), tag: 0, selection: $navigationSelection)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
