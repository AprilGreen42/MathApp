//
//  SecondMathGameView.swift
//  MathApp
//
//  Created by Дмитрий on 09.04.2024.
//

import SwiftUI

struct SecondMathGameView: View {
    @StateObject private var questionForSecondGame: Question = Question()
    @AppStorage ("BestScoreForSecondGame") var bestScore = 0
    var body: some View {
        VStack {
            VStack {
                
                //MARK: Best score, which stored in Appstorage
                Text("Best Score: \(bestScore)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 100)
            VStack {
                
                //MARK: Score stored in the current game
                Text("Score: \(questionForSecondGame.score)")
                    .bold()
                    .font(.title)
            }
            .padding(.bottom, 100)
            
            //MARK: Question
            Text("\(questionForSecondGame.firstValue) \(questionForSecondGame.operation) \(questionForSecondGame.secondValue) = \(questionForSecondGame.possibleAnswer)")
                .bold()
                .font(.title)
                .padding(.bottom, 30)
            
            //MARK: Buttons answers
            HStack {
                Button(action: {
                    questionForSecondGame.corAnswer2(varAnswer: true)
                    questionForSecondGame.generateQuestion()
                    addScore()
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
                    addScore()
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
            //MARK: Update question
            questionForSecondGame.generateQuestion()
        }
    }
    func addScore() {
        //MARK: Add score
        if self.questionForSecondGame.score >= bestScore {
            bestScore = self.questionForSecondGame.score
        }
    }
}

#Preview {
    SecondMathGameView()
}
