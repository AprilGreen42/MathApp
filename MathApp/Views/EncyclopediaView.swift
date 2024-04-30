//
//  EncyclopediaView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct EncyclopediaView: View {
    var body: some View {
        NavigationStack {
            NavigationLink(destination: {
                VideoForFindingArea()
            }, label: {
                CardForEncyclopediaView(nameOfCard: "Figures Area")
            })
            .navigationTitle("Encyclopedia")
        }
    }
}

#Preview {
    EncyclopediaView()
        .preferredColorScheme(.dark)
}
