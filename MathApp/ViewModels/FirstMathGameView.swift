//
//  FirstMathGameView.swift
//  MathApp
//
//  Created by Дмитрий on 31.03.2024.
//

import SwiftUI

struct FirstMathGameView: View {
    @StateObject private var question: Question = Question()
    @State private var answer: String = "4"
    var body: some View {
        VStack {
            VStack {
                Text("Score: \(question.score)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 150)
            Text("\(question.firstValue) \(question.operation) \(question.secondValue)")
                .bold()
                .font(.title)
            VStack {
                HStack {
                    Button(action: {
                        question.corAnswer(varAnswer: question.answers[0])
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[0])")
                    })
                    .frame(width: 100, height: 100)
                    Button(action: {
                        question.corAnswer(varAnswer: question.answers[1])
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[1])")
                    })
                    .frame(width: 100, height: 100)
                    
                }
                HStack {
                    Button(action: {
                        question.corAnswer(varAnswer: question.answers[2])
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[2])")
                    })
                    .frame(width: 100, height: 100)
                    
                    Button(action: {
                        question.corAnswer(varAnswer: question.answers[3])
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[3])")
                    })
                    .frame(width: 100, height: 100)
                }
            }
        }
        .onAppear() {
            question.generateQuestion()
            question.generateAnswers()
        }
    }
}

#Preview {
    FirstMathGameView()
}
