//
//  ViewController.swift
//  fullscreenWebBrowser
//
//  Created by dmason on 5/31/19.
//  Copyright © 2019 dmason. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController, UIScrollViewDelegate {

    
    var webView: WKWebView!
    
    override func loadView() {
        
        webView = WKWebView()
//        webView?.isUserInteractionEnabled = true;
        view = webView
        
         self.webView?.scrollView.delegate = self
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let request = URLRequest(url: URL(string: "http://10.129.178.116/alexa-lab-kiosks/admin.htm?clear=c2")!)
//        let request = URLRequest(url: URL(string: "http://10.129.178.70/WEB/kiosk/admin.htm?z=2")!)
        webView?.load(request)
//
    }
    
    func scrollViewWillBeginZooming(_ scrollView: UIScrollView, with view: UIView?) {
        //secret reload
        webView?.evaluateJavaScript("window.location.reload(true)", completionHandler: nil);
        
        
//        scrollView.pinchGestureRecognizer?.isEnabled = false
    }
}

