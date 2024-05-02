//
//  VideoForFindingArea.swift
//  MathApp
//
//  Created by Дмитрий on 30.04.2024.
//

import SwiftUI

struct VideoForFindingArea: View {
    private var ids = ["YokKp3pwVFc?si=BOHMPWYsrGzJCTor", "vqJmXGIF_1w?si=Q7j7yS6okSfB0Lto", "pvMuDPVOm7Y?si=MrsiEQfjG4fADZjl"]
    private var figures = ["Circle", "Rectungle", "Triangle"]
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                ForEach(Array(zip(figures, ids)), id:\.0) {(text, id) in
                    HStack {
                        Text(text)
                            .bold()
                            .font(.title)
                            .padding(.horizontal)
                        Spacer()
                    }
                    YouTubeView(videoId: id)
                        .frame(width: 350, height: 200)
                        .padding()
                }
                .padding(.top, 20)
                .navigationTitle("Figures Area")
            }
        }
    }
}

#Preview {
    VideoForFindingArea()
        .preferredColorScheme(.dark)
}
