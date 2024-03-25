//
//  CardForEncyclopediaView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct CardForEncyclopediaView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                    .frame(width: 300, height: 200)
                    .foregroundStyle(LinearGradient(colors: [Color("FirstColorForCard"), Color("SecondColorForCard")], startPoint: .leading, endPoint: .trailing))
                Group {
                    Text("Area of Circle")
                        .offset(x: -50, y: -55)
                    Image(systemName: "circle")
                        .resizable()
                        .frame(width: 100, height: 100)
                        .offset(x: 3, y: 20)
                    Text("S ≈ π * R")
                        .offset(x: 50, y: -80)
                        .rotationEffect(.degrees(45))
                    Text("π ≈ 3.14")
                        .offset(x: -80 , y: -55)
                        .rotationEffect(.degrees(-50))
                }
                .foregroundStyle(.white)
                .font(.title)
            }
        }
    }
}

#Preview {
    CardForEncyclopediaView()
}
