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
        }
    }
}

#Preview {
    AreaView(selectedFigure: .constant(.rectangle))
}
