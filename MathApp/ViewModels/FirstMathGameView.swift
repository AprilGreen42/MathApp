//
//  FirstMathGameView.swift
//  MathApp
//
//  Created by Дмитрий on 31.03.2024.
//

import SwiftUI

struct FirstMathGameView: View {
    @StateObject private var questionForFirstGame: Question = Question()
    @State private var answer: String = "4"
    var body: some View {
        VStack {
            VStack {
                Text("Score: \(questionForFirstGame.score)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 150)
            Text("\(questionForFirstGame.firstValue) \(questionForFirstGame.operation) \(questionForFirstGame.secondValue)")
                .bold()
                .font(.title)
            HStack {
                ForEach(0..<2) { but in
                    Button(action: {
                        questionForFirstGame.corAnswer(varAnswer: questionForFirstGame.answers[but])
                        questionForFirstGame.generateQuestion()
                        questionForFirstGame.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(questionForFirstGame.answers[but])")
                    })
                    .frame(width: 100, height: 100)
                }
            }
            HStack {
                ForEach(2..<4) { but in
                    Button(action: {
                        questionForFirstGame.corAnswer(varAnswer: questionForFirstGame.answers[but])
                        questionForFirstGame.generateQuestion()
                        questionForFirstGame.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(questionForFirstGame.answers[but])")
                    })
                    .frame(width: 100, height: 100)
                }
            }
        }
        .onAppear() {
            questionForFirstGame.generateQuestion()
            questionForFirstGame.generateAnswers()
        }
    }
}

#Preview {
    FirstMathGameView()
}
