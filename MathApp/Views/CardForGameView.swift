//
//  CardForGameView.swift
//  MathApp
//
//  Created by Дмитрий on 09.04.2024.
//

import SwiftUI

struct CardForGameView: View {
    var gameNumber: String
    var descriptionGame: String
    var body: some View {
        //MARK: View for game card
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 380, height: 200)
                .foregroundStyle(LinearGradient(colors: [.purple, .blue], startPoint: .leading, endPoint: .trailing))

            VStack(alignment: .leading) {
                Text(gameNumber)
                    .font(.title)
                    .padding(.bottom, 10)
                Text(descriptionGame)
                    .font(.title2)
            }
            .padding()
        }
    }
}

#Preview {
    CardForGameView(gameNumber: "Game №1", descriptionGame: "A simple game in which you need to calculate the result using an example and choose the correct answer from 4 suggested ones")
}
