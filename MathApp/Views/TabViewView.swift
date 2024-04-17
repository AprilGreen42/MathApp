//
//  TabViewView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct TabViewView: View {
    @State private var selection: Int = 2
    var body: some View {
        VStack {
            TabView(selection: $selection){
                Group {
                    EncyclopediaView().tabItem {
                        Image(systemName: "books.vertical")
                            .environment(\.symbolVariants, .none)
                        Text("Encyclopedia")
                    }.tag(0)
                    FiguresAreaView().tabItem {
                        Image(systemName: "chart.pie")
                            .environment(\.symbolVariants, .none)
                        Text("Area")
                    }.tag(1)
                    TrainingGamesView().tabItem {
                        Image(systemName: "brain.head.profile")
                            .environment(\.symbolVariants, .none)
                        Text("Game's")
                    }.tag(2)
                }
                .toolbarBackground(.visible, for: .tabBar)
            }
        }
    }
}

#Preview {
    TabViewView()
        .preferredColorScheme(.dark)
}
