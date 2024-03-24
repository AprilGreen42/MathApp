//
//  TabViewView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct TabViewView: View {
    @State private var selection: Int = 0
    var body: some View {
        TabView(selection: $selection){
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
        }
    }
}

#Preview {
    TabViewView()
}
