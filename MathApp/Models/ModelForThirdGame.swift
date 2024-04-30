//
//  ModelForThirdGame.swift
//  MathApp
//
//  Created by Дмитрий on 20.04.2024.
//

import Foundation


class MFTG: ObservableObject {
    @Published var question: Int
    init() {
        self.question = Int.random(in: 0...10)
    }
}
