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
            NavigationStack {
                ScrollView(.vertical) {
                    NavigationLink(destination: {
                        FirstMathGameView()
                    }, label: {
                        CardForGameView(gameNumber: "Game №1", descriptionGame: "A simple game in which you need to calculate the result using an example and choose the correct answer from 4 suggested ones")
                    })
                    NavigationLink(destination: {
                        EmptyView()
                    }, label: {
                        CardForGameView(gameNumber: "Game №2", descriptionGame: "A simple game in which you need to calculate the result using an example and answer yes or no")
                    })
                }
            }
            .foregroundStyle(.black)
            .padding()
            .navigationTitle("Game's")
        }
    }
}

#Preview {
    TrainingGamesView()
}
