//
//  YoutubeVideoPlayer.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI
import WebKit

struct YoutubeVideoPlayer: UIViewRepresentable {
    var youtubeVideoID: String

    func makeUIView(context: Context) -> WKWebView  {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        guard let url = URL(string: "https://youtube.com/embed/\(youtubeVideoID)") else { return }
        
        DispatchQueue.main.async {
            uiView.scrollView.isScrollEnabled = false
            uiView.load(.init(url: url))
        }
    }
}
