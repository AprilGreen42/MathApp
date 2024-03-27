//
//  SplashScreen.swift
//  MathApp
//
//  Created by Дмитрий on 12.03.2024.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isShow = true
    var body: some View {
        VStack {
            if self.isShow {
                VStack {
                    Image("SplashScreen")
                        .resizable()
                }
                .ignoresSafeArea(.all)
            }
            else {
                ContentView()
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
                self.isShow = false
            }
        }
    }
}

#Preview {
    SplashScreen()
}
