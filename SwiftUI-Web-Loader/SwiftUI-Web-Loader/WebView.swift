//
//  WebView.swift
//  SwiftUI-Web-Loader
//
//  Created by RANA  on 4/6/24.
//

import SwiftUI

struct WebView: View {
    var item : WebViewModel
    var body: some View {
        LoadWebView(url: URL(string: "\(item.url)"))
            .ignoresSafeArea()
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
    }
}

#Preview {
    WebView(item: WebViewModel(name: "Google", url: "https://google.com"))
}

