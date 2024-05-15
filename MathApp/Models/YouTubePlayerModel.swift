//
//  YouTubePlayerModel.swift
//  MathApp
//
//  Created by Дмитрий on 30.04.2024.
//

import SwiftUI
import WebKit

//MARK: YouTube player
struct YouTubeView: UIViewRepresentable {
    let videoId: String
    
    func makeUIView(context: Context) ->  WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let demoURL = URL(string: "https://www.youtube.com/embed/\(videoId)") else { return }
        uiView.scrollView.isScrollEnabled = false
        uiView.load(URLRequest(url: demoURL))
    }
}
