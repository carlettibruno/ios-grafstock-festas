//
//  ViewController.swift
//  controle-cliente
//
//  Created by Macbook Pro on 05/12/14.
//  Copyright (c) 2014 CSI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    
    var url = "http://54.186.251.237:8080/controle-cliente/"
    
    func loadAddress() {
        let requestUrl = NSURL(string: url)!
//        let request = NSMutableURLRequest(URL: requestUrl)

        let cookies = NSHTTPCookieStorage.sharedHTTPCookieStorage().cookies
        
        let request = NSMutableURLRequest(URL:requestUrl);
        request.HTTPShouldHandleCookies = true
        
//        [self addCookies:cookies forRequest:request];
        
        
        var cookie : NSHTTPCookie = NSHTTPCookie()
        var cookieJar : NSHTTPCookieStorage = NSHTTPCookieStorage.sharedHTTPCookieStorage()
        NSLog("Testando...")
        for cookie in cookieJar.cookies as [NSHTTPCookie]{
            NSLog("%@", cookie)
        }
        
        webView.loadRequest(request)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadAddress()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

