//
//  SecondMathGameView.swift
//  MathApp
//
//  Created by Дмитрий on 09.04.2024.
//

import SwiftUI

struct SecondMathGameView: View {
    @StateObject private var questionForSecondGame: Question = Question()
    var body: some View {
        VStack {
            VStack {
                Text("Score: \(questionForSecondGame.score)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 150)
            
            Text("\(questionForSecondGame.firstValue) \(questionForSecondGame.operation) \(questionForSecondGame.secondValue) = \(questionForSecondGame.possibleAnswer)")
                .bold()
                .font(.title)
                .padding(.bottom, 30)
            
            HStack {
                Button(action: {
                    questionForSecondGame.corAnswer2(varAnswer: true)
                    questionForSecondGame.generateQuestion()
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
                    questionForSecondGame.corAnswer2(varAnswer: false)
                    questionForSecondGame.generateQuestion()
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
            questionForSecondGame.generateQuestion()
        }
    }
}

#Preview {
    SecondMathGameView()
}
