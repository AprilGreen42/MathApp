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
            ScrollView(.vertical, showsIndicators: false) {
                NavigationLink(destination: {
                    VideoForFindingArea()
                }, label: {
                    CardForEncyclopediaView(nameOfCard: "Figures Area")
                })
            }
            .padding()
            .navigationTitle("Encyclopedia")
        }
    }
}

#Preview {
    EncyclopediaView()
        .preferredColorScheme(.dark)
}
