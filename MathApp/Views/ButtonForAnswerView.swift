//
//  ButtonForAnswerView.swift
//  MathApp
//
//  Created by Дмитрий on 31.03.2024.
//

import SwiftUI

struct ButtonForAnswerView: View {
    var answer: String
    var body: some View {
        //MARK: View for button answer
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 20.0)
                    .frame(width: 80, height: 80)
                    .foregroundStyle(.blue)
                Text(answer)
                    .bold()
                    .font(.title2)
                    .foregroundStyle(.black)
            }
        }
    }
}

#Preview {
    ButtonForAnswerView(answer: "3")
}
