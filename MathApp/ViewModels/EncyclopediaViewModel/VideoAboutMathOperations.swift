//
//  VideoAboutMathOperations.swift
//  MathApp
//
//  Created by Дмитрий on 01.05.2024.
//

import SwiftUI

struct VideoAboutMathOperations: View {
    private var ids = ["HAhg0uXn9GA?si=pyuBzWJN0WGJRInV"]
    var body: some View {
        NavigationStack {
            ForEach(ids, id:\.self) {id in
                YouTubeView(videoId: id)
                    .frame(width: 350, height: 200)
                    .padding()
            }
            Spacer()
            
            .navigationTitle("Math Operations")
        }
    }
}

#Preview {
    VideoAboutMathOperations()
}
