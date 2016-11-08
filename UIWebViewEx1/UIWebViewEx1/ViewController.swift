//
//  ViewController.swift
//  UIWebViewEx1
//
//  Created by Divakar Y N on 01/11/16.
//  Copyright © 2016 BridgeLabz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//    }
    
      override func viewDidLoad() {
              super.viewDidLoad()
                let myWebView:UIWebView = UIWebView(frame: CGRectMake(0, 0, UIScreen.mainScreen().bounds.width, UIScreen.mainScreen().bounds.height))
            myWebView.loadRequest(NSURLRequest(URL: NSURL(string: "https://www.tutorialspoint.com/")!))
             self.webView.addSubview(myWebView)
          }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

