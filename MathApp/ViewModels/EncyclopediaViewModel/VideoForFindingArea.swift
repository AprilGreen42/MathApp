//
//  VideoForFindingArea.swift
//  MathApp
//
//  Created by Дмитрий on 30.04.2024.
//

import SwiftUI

struct VideoForFindingArea: View {
    
    //MARK: Video ids
    private var ids = ["YokKp3pwVFc?si=BOHMPWYsrGzJCTor", "vqJmXGIF_1w?si=Q7j7yS6okSfB0Lto", "pvMuDPVOm7Y?si=MrsiEQfjG4fADZjl"]
    
    //MARK: Type of figure
    private var figures = ["Circle", "Rectungle", "Triangle"]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                
                //MARK: Picker for video
                
                ForEach(Array(zip(figures, ids)), id:\.0) {(text, id) in
                    HStack {
                        Text(text)
                            .bold()
                            .font(.title)
                            .padding(.horizontal)
                        Spacer()
                    }
                    
                    //MARK: Call YouTube player
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
