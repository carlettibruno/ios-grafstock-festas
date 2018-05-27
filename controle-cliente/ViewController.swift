//
//  ViewController.swift
//  controle-cliente
//
//  Created by Macbook Pro on 05/12/14.
//  Copyright (c) 2014 CSI. All rights reserved.
//

import WebKit

class ViewController: UIViewController, WKNavigationDelegate {

    var webView: WKWebView!
    
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 1
        //let url = URL(string: "http://carlettisolucoes.com.br/grafstock-festas-cliente/")!
        let url = URL(string: "http://carlettisolucoes.com.br:8080/controle-cliente/")!
        webView.load(URLRequest(url: url))
        
        // 2
        let refresh = UIBarButtonItem(barButtonSystemItem: .refresh, target: webView, action: #selector(webView.reload))
        toolbarItems = [refresh]
        navigationController?.isToolbarHidden = false
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        title = webView.title
    }
    
}

