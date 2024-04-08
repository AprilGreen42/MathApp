//
//  MathGameView.swift
//  MathApp
//
//  Created by Дмитрий on 31.03.2024.
//

import SwiftUI

struct MathGameView: View {
    @StateObject private var question: Question = Question()
    private var randomValue: Int = 1
    @State private var answer: String = "4"
    var body: some View {
        VStack {
            Text("\(question.firstValue) + \(question.secondValue)")
                .bold()
                .font(.title)
            VStack {
                HStack {
                    Button(action: {
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[0])")
                    })
                    .frame(width: 100, height: 100)
                    Button(action: {
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[1])")
                    })
                    .frame(width: 100, height: 100)
                    
                }
                HStack {
                    Button(action: {
                        question.generateQuestion()
                        question.generateAnswers()
                    }, label: {
                        ButtonForAnswerView(answer: "\(question.answers[2])")
                    })
                    .frame(width: 100, height: 100)
                    
                    Button(action: {
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
    MathGameView()
}
