//
//  ContentView.swift
//  MathApp
//
//  Created by Дмитрий on 12.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isShow: Bool = true
    var body: some View {
        VStack {
            if self.isShow {
                SplashScreen()
                    .ignoresSafeArea(.all)
            }
            else {
                TabViewView()
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
    ContentView()
}
