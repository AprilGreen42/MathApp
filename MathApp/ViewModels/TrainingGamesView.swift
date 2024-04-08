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
            VStack {
                MathGameView()
            }
            .navigationTitle("Game's")
        }
    }
}

#Preview {
    TrainingGamesView()
}
