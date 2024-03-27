//
//  AreaView.swift
//  MathApp
//
//  Created by Дмитрий on 25.03.2024.
//

import SwiftUI

struct AreaView: View {
    @Binding var selectedFigure: Figures
    var body: some View {
        VStack {
            AreaFinding(fig: selectedFigure)
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 70, height: 70)
                Text("=")
                    .font(.system(size: 38))
                    .bold()
            }
        }
    }
}

#Preview {
    AreaView(selectedFigure: .constant(.circle))
}
