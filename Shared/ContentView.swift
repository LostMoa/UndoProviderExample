//
//  ContentView.swift
//  Shared
//
//  Created by Matthaus Woolard on 09/09/2020.
//

import SwiftUI

struct ContentView: View {
    @State
    var text: String = "Example"
    
    @State
    var value: Bool = false
    
    var body: some View {
        UndoProvider(self.$value) { value in
            Toggle(isOn: value) {
                Text("Hello")
            }
        }
        Toggle(isOn: self.$value) {
            Text("Not wrapped")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
