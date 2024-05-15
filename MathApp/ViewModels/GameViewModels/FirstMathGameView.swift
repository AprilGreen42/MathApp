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
    @AppStorage("BestScoreForFitstGame") var bestScore = 0
    var body: some View {
        VStack {
            
            //MARK: Best score, which stored in Appstorage
            VStack {
                Text("Best Score: \(bestScore)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 50)
            
            //MARK: Score stored in the current game
            VStack {
                Text("Score: \(questionForFirstGame.score)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 100)
            
            //MARK: Question
            Text("\(questionForFirstGame.firstValue) \(questionForFirstGame.operation) \(questionForFirstGame.secondValue)")
                .bold()
                .font(.title)
            
            //MARK: Buttons answers
            HStack {
                ForEach(0..<2) { but in
                    Button(action: {
                        questionForFirstGame.corAnswer(varAnswer: questionForFirstGame.answers[but])
                        questionForFirstGame.generateQuestion()
                        questionForFirstGame.generateAnswers()
                        addScore()
                    }, label: {
                        ButtonForAnswerView(answer: "\(questionForFirstGame.answers[but])")
                    })
                    .frame(width: 100, height: 100)
                }
            }
            
            //MARK: Buttons answers
            HStack {
                ForEach(2..<4) { but in
                    Button(action: {
                        questionForFirstGame.corAnswer(varAnswer: questionForFirstGame.answers[but])
                        questionForFirstGame.generateQuestion()
                        questionForFirstGame.generateAnswers()
                        addScore()
                    }, label: {
                        ButtonForAnswerView(answer: "\(questionForFirstGame.answers[but])")
                    })
                    .frame(width: 100, height: 100)
                }
            }
        }
        .onAppear() {
            //MARK: Update question and answers
            questionForFirstGame.generateQuestion()
            questionForFirstGame.generateAnswers()
        }
    }
    func addScore() {
        //MARK: Add score
        if self.questionForFirstGame.score >= bestScore {
            bestScore = self.questionForFirstGame.score
        }
    }
}

#Preview {
    FirstMathGameView()
}
