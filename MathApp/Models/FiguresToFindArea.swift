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
        let areaOfCircle: Double? = 3.14 * radius! * radius!
        return VStack {
            ShowAreaFigure(area: areaOfCircle!)
        }
    }
    var body: some View {
        VStack {
            TextField("Радиус", text: $radius)
                .frame(width: 100, height: 50)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            areaOfFigure(r: radius)
        }
    }
}


struct Triangle: View {
    @State private var firstSide: String = ""
    @State private var secondSide: String = ""
    @State private var thirdSide: String = ""
    func areaOfFigure(_ height: String, _ width: String, _ length: String) -> some View {
        let width: Double? = Double(width) ?? 0
        let height: Double? = Double(height) ?? 0
        let length: Double? = Double(length) ?? 0
        let perimeter: Double? = ((width! + height! + length!) / 2)
        let areaOfTriangle: Double? = sqrt(perimeter! * (perimeter! - width!) * (perimeter! - height!) * (perimeter! - length!))
        return VStack {
            ShowAreaFigure(area: (areaOfTriangle!))
        }
    }
    var body: some View {
        VStack {
            HStack {
                Group {
                    TextField("Высота", text: $firstSide)
                    TextField("Ширина", text: $secondSide)
                    TextField("Ширина", text: $thirdSide)
                }
            }
                .frame(width: 300, height: 50)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            areaOfFigure(firstSide, secondSide, thirdSide)
        }
    }
}


struct Rectangle: View {
    @State private var heightOfRectangle: String = ""
    @State private var widthOfRectangle: String = ""
    func areaOfFigure(_ height: String, _ width: String) -> some View {
        let width: Double? = Double(width) ?? 0
        let height: Double? = Double(height) ?? 0
        let area: Double? = width! * height!
        return VStack {
            ShowAreaFigure(area: (area!))
        }
    }
    var body: some View {
        VStack {
            HStack {
                Group {
                    TextField("Высота", text: $heightOfRectangle)
                    TextField("Ширина", text: $widthOfRectangle)
                }
            }
                .frame(width: 200, height: 50)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            
            areaOfFigure(heightOfRectangle, widthOfRectangle)
        }
    }
}


struct ShowAreaFigure: View {
    init(area: Double? = nil) {
        self.area = (area! * 1000).rounded() / 1000
    }
    var area: Double?
    var body: some View {
        HStack {
            Image(systemName: "s.square")
                .resizable()
                .frame(width: 30, height: 30)
            Text(" = \(String(format: "%.2f", area!))")
                .font(.system(size: 42))
        }
    }
}


#Preview(body: {
    Rectangle()
})
