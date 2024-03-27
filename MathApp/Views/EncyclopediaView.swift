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
            VStack {
                NavigationLink(destination: {
                    EmptyView()
                }, label: {
                    CardForEncyclopediaView()
                        .offset(x: -25, y: 30)
                })
                Spacer()
            }
            .navigationTitle("Encyclopedia")
        }
    }
}

#Preview {
    EncyclopediaView()
        .preferredColorScheme(.dark)
}
