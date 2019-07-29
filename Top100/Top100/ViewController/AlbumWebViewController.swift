//
//  AlbumWebViewController.swift
//  Top100
//
//  Created by Nick Reichard on 7/29/19.
//  Copyright © 2019 Nick Reichard. All rights reserved.
//

import UIKit
import WebKit

class AlbumWebViewController: UIViewController, WKNavigationDelegate {
    
    var urlStr: URL!
    private var webView: WKWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
      let webView = WKWebView(frame: CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: self.view.frame.size.height))
        view.addSubview(webView)
        self.webView = webView
        webView.navigationDelegate = self
        webView.allowsBackForwardNavigationGestures = true
        setupWebview()
        
    }
    

    private func setupWebview() {
        let request = URLRequest(url: self.urlStr)
        webView.load(request)
    }

}
