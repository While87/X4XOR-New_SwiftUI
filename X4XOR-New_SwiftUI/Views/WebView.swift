//
//  WebView.swift
//  X4XOR-New_SwiftUI
//
//  Created by Vladimir Gorbunov on 10/12/20.
//

import Foundation
import WebKit
import SwiftUI

//Самодостаточная структура для показа WEB контента во View
//Имеет свойство urlString которое передается при вызове структуры
struct WebView: UIViewRepresentable {

    let urlString: String?
    
    func makeUIView(context: Context) -> WebView.UIViewType {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = urlString{
            if let url = URL(string: safeString){
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
}

