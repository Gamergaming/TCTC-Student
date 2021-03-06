//
//  AnnouncementsViewController.swift
//  TCTC Student
//
//  Created by Branson Boggia on 10/31/16.
//  Copyright © 2016 Pinetree Studios. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    @IBOutlet weak var customNav: UINavigationBar!
    var url = ""
    var titleString = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = titleString as String
        
        let myURL = URL(string: url .addingPercentEscapes(using: String.Encoding.utf8)!)
        
        let request = URLRequest(url: myURL!)
        
        self.webView.loadRequest(request)
        self.webView.delegate = self
    }
    @IBAction func closeBarButtonAction(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
}

