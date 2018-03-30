//
//  CsiWebViewDelegate.swift
//  controle-cliente
//
//  Created by Bruno Carletti on 27/03/18.
//  Copyright © 2018 CSI. All rights reserved.
//

import UIKit

class CsiWebViewDelegate: NSObject, UIWebViewDelegate {
    
    func webView(_ webView: UIWebView, didFailLoadWithError error: Error) {
        print(error)
    }
    
    func webViewDidStartLoad(_ webView: UIWebView) {
        print("Startup WebView........")
    }
    
    func webViewDidFinishLoad(_ webView: UIWebView) {
        print("Startup WebView........")
    }
    
}
