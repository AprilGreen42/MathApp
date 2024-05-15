//
//  SplashScreen.swift
//  MathApp
//
//  Created by Дмитрий on 12.03.2024.
//

import SwiftUI

struct SplashScreen: View {
    var body: some View {
        VStack {
            Image("SplashScreen")
                .resizable()
        }
        .ignoresSafeArea(.all)
    }
}

#Preview {
    SplashScreen()
}
