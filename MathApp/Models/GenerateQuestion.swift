//
//  GenerateQuestion.swift
//  MathApp
//
//  Created by Дмитрий on 31.03.2024.
//

import Foundation


class Question: ObservableObject {
    
    //MARK: Params for question and answer
    
    @Published var firstValue: Int
    @Published var secondValue: Int
    @Published var question: Int = 4
    @Published var answers: [Int]
    var operations: [String] = ["+", "*", "-"]
    @Published var operation: String
    @Published var correctAnswer: Bool = false
    @Published var score: Int
    @Published var possibleAnswer: Int = 0
    
    init() {
        self.firstValue = Int.random(in: 0...15)
        self.secondValue = Int.random(in: 0...15)
        self.answers = [0, 1, 2, 3]
        operation = operations.randomElement()!
        self.score = 0
    }
    
    //MARK: Function for question
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
        self.possibleAnswer = Int.random(in: question-2...question+2)
    }
    
    //MARK: Function for answers
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
    
    //MARK: Function to check the result for first game(FirstMathGame)
    func corAnswer(varAnswer: Int) {
        if question == varAnswer {
            score += 1
        }
    }
    
    //MARK: Function to check the result for second game(SecondMathGame)
    func corAnswer2(varAnswer: Bool) {
        if varAnswer == true {
            if question == possibleAnswer {
                self.score += 1
            }
        }
        else {
            if question != possibleAnswer {
                self.score += 1
            }
        }
    }
}

