//
//  EncyclopediaView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct EncyclopediaView: View {
    var body: some View {
        VStack {
            CardForEncyclopediaView()
        }
    }
}

#Preview {
    EncyclopediaView()
        .preferredColorScheme(.dark)
}
