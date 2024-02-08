//
//  ContentView.swift
//  War Card Game
//
//  Created by Neha Bijoy on 2/7/24.
//

import SwiftUI

struct ContentView: View {
    
    // property wrapper, modifies the property to indicate its special (the property: var playerCard = "card7")
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    
    var body: some View {
        
        
        ZStack
        {
//            Image("background-wood-grain")
            Color(.green)
                .ignoresSafeArea()
            
            
            VStack {
                Spacer()
                Spacer()
                Image("logo")
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                // Image("button")
//                Button("Deal") {
//                    
//                    deal()
//                    
//                }
                
                Button(action: {
                        deal()
                },
                       label: {
                    Image("button")
                })
                .foregroundColor(.white)
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
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundColor(.white)
                Spacer()
                Spacer()
                
                
            }
           
            
            
            
        }
    }
    
    func deal()
    {
        // Randomize player cards, randomize cpu cards, update score
        //print("Deal cards")
        
        let playerCardValue = Int.random(in: 2...14)
        // random inclusive generator from 2-14
        playerCard = "card" + String(playerCardValue)
        
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // added @State to make the not error "self"
        if playerCardValue > cpuCardValue {
            // add 1 to player score eac time
            playerScore = playerScore + 1
        }
        else if cpuCardValue > playerCardValue{
            cpuScore += 1
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
      
    }
}

