//
//  GenerateQuestion.swift
//  MathApp
//
//  Created by Дмитрий on 31.03.2024.
//

import Foundation


class Question: ObservableObject {
    @Published var firstValue: Int
    @Published var secondValue: Int
    @Published var question: Int = 4
    @Published var answers: [Int]
    var operations: [String] = ["+", "*", "-"]
    @Published var operation: String
    @Published var correctAnswer: Int
    @Published var score: Int
    
    init() {
        self.firstValue = Int.random(in: 0...15)
        self.secondValue = Int.random(in: 0...15)
        self.answers = [0, 1, 2, 3]
        operation = operations.randomElement()!
        self.correctAnswer = 0
        self.score = 0
    }
    
    func generateQuestion() {
        self.firstValue = Int.random(in: 0...15)
        self.secondValue = Int.random(in: 0...15)
        operation = operations.randomElement()!
        switch operation {
        case "+":
            self.question = firstValue + secondValue
        case "*":
            self.question = firstValue * secondValue
        case "-":
            self.question = firstValue - secondValue
        default:
            break
        }
        self.correctAnswer = question
    }
    
    func generateAnswers() {
        self.answers.removeAll()
        var randElem: Int
        self.answers.append(question)
        while answers.count != 4 {
            randElem = Int.random(in: question-5...question+5)
            if randElem == question || answers.contains(randElem){
                continue
            }
            else {
                answers.append(randElem)
            }
        }
        self.answers.shuffle()
    }
    
    func corAnswer(varAnswer: Int) {
        if question == varAnswer {
            score += 1
        }
    }
}

