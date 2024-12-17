//
//  GameView.swift
//  Coin Flip
//
//  Created by Mia Anderson on 12/4/24.
//

import SwiftUI

struct GameView: View {
    @State private var randomValue = 0
    @State private var rotation = 0.0
    var body: some View {
        NavigationView {
            VStack {
                Image("head \(randomValue)") // heads vs tails image
                    .resizable()
                    .frame(width: 250, height: 250)
                    .onTapGesture {
                        chooseRandom(times: 4) // "rotates" coin 4 times
                        withAnimation(.interpolatingSpring(Spring(stiffness: 10, damping: 2))) {
                            rotation += 360 // adds flipping animation
                        }
                    }
                    .rotationEffect(.degrees(rotation))
                    .rotation3DEffect(.degrees(rotation), axis: (x: 1, y: 1, z: 0)) //rotates around all axes
                Text("Tap to flip!")
                    .font(Font.custom("Marker Felt", size: 45))
                }
            NavigationLink("Play", destination: GameView())
                .font(.title)
            }
        }
    func chooseRandom(times: Int) {
        if times > 0 { // times is 4 so rotates 4 times
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) { // adds a second in between flips
                randomValue = Int.random(in: 1...4) // generates number between 1 and 4
                chooseRandom(times: times - 1) // makes sure it changed 4 times
            }
        }
    }
}
#Preview {
    ContentView()
}

