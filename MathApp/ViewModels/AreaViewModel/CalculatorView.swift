//
//  CalculatorView.swift
//  MathApp
//
//  Created by Дмитрий on 02.05.2024.
//

import SwiftUI

struct CalculatorButton: View {
    let title: String
    let action: (String) -> Void
  
    var body: some View {
        Button(action: {
            action(title)
        }, label: {
            if title == "*" || title == "/" || title == "+" || title == "-" || title == "=" || title == "C" {
                ViewForCalculatorButton(colorOFButton: .orange, text: title)
            } else {
                ViewForCalculatorButton(colorOFButton: .gray, text: title)
            }
        })
    }
}

struct CalculatorView: View {
    @State private var display = "0"
    @State private var hasEquality = false
    
    //MARK: Function for calculating and displaying value
    private func buttonAction(_ input: String) {
        if input == "C" {
            display = "0"
        } else if input == "=" {
            display = evaluateExpression(expression: display)
            hasEquality = true
        } else {
            if display == "0" {
                display = input
            } else {
                if hasEquality {
                    display = input
                    hasEquality = false
                } else {
                    display += input
                }
            }
        }
    }
    
    //MARK: Convert an expression to a string
    private func evaluateExpression(expression: String) -> String {
        let exp = NSExpression(format: expression)
        let result = exp.expressionValue(with: nil, context: nil) as! NSNumber
        return result.stringValue
    }
    
    //MARK: Values for buttons
    let buttonRows = [
        ["7", "8", "9", "/"],
        ["4", "5", "6", "*"],
        ["1", "2", "3", "-"],
        ["0", "C", "=", "+"]
    ]
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                Text(display)
                    .font(.system(size: 45))
                    .bold()
                    .padding()
                //MARK: Display buttons and calculation
                ForEach(buttonRows, id: \.self) { row in
                    HStack {
                        ForEach(row, id: \.self) { title in
                            CalculatorButton(title: title, action: buttonAction(_:))
                        }
                    }
                    
                }
                .navigationTitle("Calculator")
                Spacer()
            }
        }
    }
}

#Preview {
    CalculatorView()
}
