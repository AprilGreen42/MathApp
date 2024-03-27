//
//  FiguresAreaView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct FiguresAreaView: View {
    @State private var selection: Figures = .circle
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Figures", selection: $selection, content: {
                    ForEach(Figures.allCases) { fig in
                        Text(fig.rawValue.capitalized)
                            
                    }
                })
                Image(systemName: "\(selection.rawValue)")
                    .resizable()
                    .frame(width: 120, height: 120)
                    .padding(.top, 30)
                    .padding(.bottom, 30)
                AreaView(selectedFigure: $selection)
                Spacer()
            }
            .padding(.top, 30)
            .navigationTitle("Figures Area")
        }
    }
}

#Preview {
    FiguresAreaView()
}
