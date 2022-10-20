//
//  ContentView.swift
//  CW4.2
//
//  Created by aisha abdulaziz on 19/10/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State var best = "qm"
    
    var body: some View {
        VStack {
            Text("What's your favourite track?")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Image(best)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150)
            
            Text("iOS")
                .font(.title2)
                .fontWeight(.bold)
                .onTapGesture {
                best = "apple"
                }
            
            Text("Android")
                .font(.title2)
                .fontWeight(.bold)
                .onTapGesture {
                    best = "android"
                }
            
            Text("Game dev")
                .font(.title2)
                .fontWeight(.bold)
                .onTapGesture {
                    best = "unity"
                }
            
            Text("Web")
                .font(.title2)
                .fontWeight(.bold)
                .onTapGesture {
                    best = "vscode"
                }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
