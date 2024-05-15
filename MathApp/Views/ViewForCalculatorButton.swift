//
//  ViewForCalculatorButton.swift
//  MathApp
//
//  Created by Дмитрий on 02.05.2024.
//

import SwiftUI

struct ViewForCalculatorButton: View {
    var colorOFButton: Color = .gray
    var text: String = "1"
    var body: some View {
        //MARK: View for calculator button
        ZStack {
            Circle()
                .frame(width: 75)
                .foregroundStyle(colorOFButton)
            Text(text)
                .font(.title)
                .bold()
                .foregroundStyle(.black)
        }
    }
}

#Preview {
    ViewForCalculatorButton()
        .preferredColorScheme(.dark)
}
