//
//  FiguresToFindArea.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import Foundation
import SwiftUI


//MARK: Enums of types figures
enum Figures: String, CaseIterable, Identifiable {
    case triangle = "triangle"
    case rectangle = "rectangle"
    case circle = "circle"
    var id: Self { self }
}


//MARK: View, whick call another view depending of type figure
struct AreaFinding: View {
    var fig: Figures
    
    //MARK: Call views depending type of figures
    func area(_ selectedFigure: Figures) -> AnyView {
        switch selectedFigure {
        case .circle:
            return AnyView(CircleView())
        case .triangle:
            return AnyView(TriangleView())
        case .rectangle:
            return AnyView(RectangleView())
        }
    }

    var body: some View {
        area(fig)
    }
}


//MARK: View for circle type figure
struct CircleView: View {
    @State private var radius: String = ""
    
    //MARK: Function for calculation area
    func areaOfFigure(r: String) -> some View {
        let radius: Double? = Double(r) ?? 0
        let areaOfCircle: Double? = 3.14 * radius! * radius!
        return VStack {
            ShowAreaFigure(area: areaOfCircle!)
        }
    }
    var body: some View {
        VStack {
            TextField("Radius", text: $radius)
                .frame(width: 100, height: 50)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            areaOfFigure(r: radius)
        }
    }
}


//MARK: View for triangle type figure
struct TriangleView: View {
    @State private var firstSide: String = ""
    @State private var secondSide: String = ""
    
    //MARK: Function for calculation area
    func areaOfFigure(_ height: String, _ width: String) -> some View {
        let width: Double? = Double(width) ?? 0
        let height: Double? = Double(height) ?? 0
        let areaOfTriangle: Double? = ((width! * height!) / 2)
        return VStack {
            ShowAreaFigure(area: (areaOfTriangle!))
        }
    }
    var body: some View {
        VStack {
            HStack {
                Group {
                    TextField("Height", text: $firstSide)
                    TextField("Width", text: $secondSide)
                }
            }
                .frame(width: 320, height: 50)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            areaOfFigure(firstSide, secondSide)
        }
    }
}


//MARK: View for rectangle type figure
struct RectangleView: View {
    @State private var heightOfRectangle: String = ""
    @State private var widthOfRectangle: String = ""
    
    //MARK: Function for calculation area
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
                    TextField("Height", text: $heightOfRectangle)
                    TextField("Width", text: $widthOfRectangle)
                }
            }
                .frame(width: 200, height: 50)
                .textFieldStyle(.roundedBorder)
                .multilineTextAlignment(.center)
            
            areaOfFigure(heightOfRectangle, widthOfRectangle)
        }
    }
}


//MARK: View in which we show the result of finding the area of ​​a figure
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
