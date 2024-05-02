//
//  CalculationsView.swift
//  MathApp
//
//  Created by Дмитрий on 02.05.2024.
//

import SwiftUI

struct CalculationsView: View {
    
    enum Calculations: String, CaseIterable, Identifiable {
    case figures = "Figures"
    case numbers = "Numbers"
    var id: Self { self }
    }
    
    @State private var selection: Calculations = .figures
    var body: some View {
        VStack {
            if selection == .figures {
                FiguresAreaView()
            }
            else {
                CalculatorView()
            }
            Picker("Choice", selection: $selection, content: {
                ForEach(Calculations.allCases) { sel in
                    Text(sel.rawValue)
                }
            })
            .padding()
            .pickerStyle(.palette)
        }
    }
}

#Preview {
    CalculationsView()
}
