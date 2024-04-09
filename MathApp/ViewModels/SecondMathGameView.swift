//
//  SecondMathGameView.swift
//  MathApp
//
//  Created by Дмитрий on 09.04.2024.
//

import SwiftUI

struct SecondMathGameView: View {
    @StateObject private var question: Question = Question()
    var body: some View {
        VStack {
            VStack {
                Text("Score: \(question.score)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 150)
            
            Text("\(question.firstValue) \(question.operation) \(question.secondValue) = \(question.possibleAnswer)")
                .bold()
                .font(.title)
                .padding(.bottom, 30)
            
            HStack {
                Button(action: {
                    question.corAnswer2(varAnswer: true)
                    question.generateQuestion()
                }, label: {
                    Text("Yes")
                })
                .frame(width: 100, height: 50)
                .foregroundStyle(.white)
                .background(.green)
                .clipShape(RoundedRectangle(cornerRadius: 25))
                
                Text("or")
                    .font(.title)
                    .bold()
                
                Button(action: {
                    question.corAnswer2(varAnswer: false)
                    question.generateQuestion()
                }, label: {
                    Text("No")
                })
                .frame(width: 100, height: 50)
                .foregroundStyle(.white)
                .background(.red)
                .clipShape(RoundedRectangle(cornerRadius: 25))
            }
        }
        .onAppear() {
            question.generateQuestion()
        }
    }
}

#Preview {
    SecondMathGameView()
}
