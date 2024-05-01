//
//  CardForEncyclopediaView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct CardForEncyclopediaView: View {
    var nameOfCard: String = ""
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 380, height: 200)
                    .foregroundStyle(LinearGradient(colors: [Color("FirstColorForCard"), Color("SecondColorForCard")], startPoint: .leading, endPoint: .trailing))
                Text(nameOfCard)
                    .foregroundStyle(.white)
                    .font(.title)
            }
        }
    }
}

#Preview {
    CardForEncyclopediaView(nameOfCard: "Figures Area")
}
