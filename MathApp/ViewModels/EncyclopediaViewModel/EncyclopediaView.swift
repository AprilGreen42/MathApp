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
                
                //MARK: Links for video type
                NavigationLink(destination: {
                    VideoForFindingArea()
                }, label: {
                    CardForEncyclopediaView(nameOfCard: "Figures Area")
                })
                NavigationLink(destination: {
                    VideoAboutMathOperations()
                }, label: {
                    CardForEncyclopediaView(nameOfCard: "Math Operations")
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
