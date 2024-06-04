//
//  LoadWebView.swift
//  SwiftUI-Web-Loader
//
//  Created by RANA  on 4/6/24.
//

import SwiftUI
import WebKit


struct LoadWebView : UIViewRepresentable {
    
    var url : URL?
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ webView: WKWebView, context: Context) {
        
        guard let url = url else { return }
        let request = URLRequest(url: url)
        webView.load(request)
    }
    

}
