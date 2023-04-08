//
//  ContentView.swift
//  Simple Card Game
//
//  Created by Thiago on 08/04/23.
//

import SwiftUI

struct ContentView: View {
    @State var player1Card = "back"
    @State var player2Card = "back"
    
    @State var player1Score = 0
    @State var player2Score = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(player1Card)
                    Spacer()
                    Image(player2Card)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player 1")
                        Text(String(player1Score))
                    }
                    Spacer()
                    VStack {
                        Text("Player 2")
                        Text(String(player2Score))
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        let player1CardValue = Int.random(in: 2...14);
        player1Card = "card" + String(player1CardValue)
        
        let player2CardValue = Int.random(in: 2...14);
        player2Card = "card" + String(player2CardValue)
        
        if player1CardValue > player2CardValue {
            player1Score += 1
        }else if player2CardValue > player1CardValue {
            player2Score += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
