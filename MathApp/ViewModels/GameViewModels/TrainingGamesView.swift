//
//  TrainingGamesView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct TrainingGamesView: View {
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                
                //MARK: Links for type of games
                NavigationLink(destination: {
                    FirstMathGameView()
                }, label: {
                    CardForGameView(gameNumber: "Game №1", descriptionGame: "A simple game in which you need to calculate the result using an example and choose the correct answer from 4 suggested ones")
                })
                
                NavigationLink(destination: {
                    SecondMathGameView()
                }, label: {
                    CardForGameView(gameNumber: "Game №2", descriptionGame: "A simple game in which you need to calculate the result using an example and answer 'Yes' or 'No'")
                })
                
                NavigationLink(destination: {
                    ThirdMathGameView()
                }, label: {
                    CardForGameView(gameNumber: "Game №3", descriptionGame: "A game in which you will need to form a question from the proposed values")
                })
                    
            }
            .foregroundStyle(.black)
            .padding()
            .navigationTitle("Games")
        }
    }
}

#Preview {
    TrainingGamesView()
}
