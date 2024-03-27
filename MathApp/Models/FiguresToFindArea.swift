//
//  FiguresToFindArea.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import Foundation
import SwiftUI

enum Figures: String, CaseIterable, Identifiable {
    case triangle, rectangle, circle
    var id: Self { self }
}

struct AreaFinding: View {
    var fig: Figures
    func area(_ selectedFigure: Figures) -> AnyView {
        switch selectedFigure {
        case .circle:
            return AnyView(CircleView())
        case .triangle:
            return AnyView(Triangle())
        case .rectangle:
            return AnyView(Rectangle())
        }
    }

    var body: some View {
        area(fig)
    }
}

struct CircleView: View {
    @State private var radius: String = ""
    func areaOfFigure(r: String) -> some View {
        let radius: Double? = Double(r) ?? 0
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \(3.14 * radius! * radius!)")
                    .font(.system(size: 42))
            }
        }
    }
    var body: some View {
        TextField("Радиус", text: $radius)
            .frame(width: 100, height: 50)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
    }
}

struct Triangle: View {
    var body: some View {
        Text("Triangle")
    }
}

struct Rectangle: View {
    var body: some View {
        Text("Rectangle")
    }
}

#Preview(body: {
    CircleView()
})
