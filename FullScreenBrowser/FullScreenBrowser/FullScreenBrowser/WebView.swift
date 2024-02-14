//
//  WebView.swift
//  FullScreenBrowser
//
//  Created by Emma Edgar on 1/16/24.
//

import Foundation
import WebKit
import SwiftUI


struct WebView: UIViewRepresentable {
    var url: String //passed in when the WebView is created, var name: type
    //var is a variable aka mutable, let is a constant
    func makeUIView(context: Context) -> some UIView {
        //returning a generic UIView, more specific would be returning a WebView (the actual view we will show)
        guard let url = URL(string: url) else {
            //create a url from the properties passed in and assign it to previously created the url var, otherwise...
            //return an empty view if the URL can't be created
            return WKWebView()
        }
    
        let request = URLRequest(url: url)
        let wkWebView = WKWebView()
        wkWebView.load(request)
        return wkWebView
        
        }//makeUIView

        func updateUIView(_ uiView: UIViewType, context: Context) {
        }
    
    
} //WebView
