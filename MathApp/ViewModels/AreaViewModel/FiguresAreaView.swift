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
                
                //MARK: Picker for type of figure
                Picker("Figures", selection: $selection, content: {
                    ForEach(Figures.allCases) { fig in
                        Text(fig.rawValue.capitalized)
                            
                    }
                })
                
                //MARK: If selected figure is triangle, we use right triangle, else we use usually figure
                if selection == .triangle {
                    Image(systemName: "righttriangle")
                        .resizable()
                        .scaleEffect(x: -1, y: 1)
                        .frame(width: 120, height: 120)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                } else {
                    Image(systemName: "\(selection.rawValue)")
                        .resizable()
                        .frame(width: 120, height: 120)
                        .padding(.top, 30)
                        .padding(.bottom, 30)
                }
                //MARK: Call for calculation area of figure
                AreaFinding(fig: selection)
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
