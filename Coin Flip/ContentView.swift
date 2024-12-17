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
                Color.white.opacity(0.2).ignoresSafeArea()
                VStack {
                    Text("Coin Flip!")
                        .font(Font.custom("Marker Felt", size: 45))
                        .padding(45)
                    Image("real coin").resizable().frame(width: 282, height: 275)
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .padding()
                    Image("arrow").resizable().frame(width: 100, height: 150)
                        .imageScale(.large)
                        .foregroundStyle(.tint)

                    Spacer()
                    NavigationLink("PLAY!!", destination: GameView()) //brings you to next view
                        .font(Font.custom("Marker Felt", size: 30))
                        .padding(45)
                }
            }
        }
        }
    
}
#Preview {
    ContentView()
}
