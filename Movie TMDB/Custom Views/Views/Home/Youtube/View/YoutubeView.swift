//
//  YoutubeView.swift
//  Movie TMDB
//
//  Created by Rafael Agayev on 19.09.25.
//

import SwiftUI
import WebKit



struct YouTubeView: UIViewRepresentable {
    let videoKey: String

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        return webView
    }

    func updateUIView(_ uiView: WKWebView, context: Context) {
        let url = URL(string: "https://www.youtube.com/embed/\(videoKey)")!
        uiView.load(URLRequest(url: url))
    }
}
