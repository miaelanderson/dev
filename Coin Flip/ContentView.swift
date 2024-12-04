//
//  ContentView.swift
//  Coin Flip
//
//  Created by Mia Anderson on 12/2/24.
//

import SwiftUI

struct ContentView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        NavigationView {
            ZStack {
                Color.pink.opacity(0.2).ignoresSafeArea()
                VStack {
                    Text("Coin Flip!")
                        .font(.title).bold()
                    Spacer()
                    NavigationLink("PLAY!!", destination: GameView())
                        .font(.title).bold()
                    
                }
            }
        }
        }
}
#Preview {
    ContentView()
}
