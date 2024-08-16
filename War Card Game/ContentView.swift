//
//  ContentView.swift
//  War Card Game
//
//  Created by Tejas Limbikai on 16/08/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "back"
    @State var computerCard = "back"
    @State var playerScore = 0
    @State var computerScore = 0
    
    var body: some View {
        ZStack{
            
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack{
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(computerCard)
                    Spacer()
                }
                Spacer()
                
                Button {
                    deal()
                } label: {
                    Image("button")
                }


                Spacer()
                
                HStack{
                    Spacer()
                    
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    
                    VStack{
                        Text("Computer")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(computerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
            }
        }
    }
    
    func deal() {
        var playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        var computerCardValue = Int.random(in: 2...14)
        computerCard = "card" + String(computerCardValue)
        
        if playerCardValue > computerCardValue {
            playerScore += 1
        }
        else if computerCardValue > playerCardValue {
            computerScore += 1
        }
    }
}

#Preview {
    ContentView()
}
