//
//  ViewController.swift
//  deepLinkFirst
//
//  Created by Jawaher Alagel on 8/21/20.
//  Copyright © 2020 Jawaher Alaggl. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goToSecondApp(_ sender: UIButton) {
        
        let application = UIApplication.shared
        
        let secondAppPath = "second://"
        
        let appUrl = URL(string: secondAppPath)!
        
        let websiteUrl = URL(string: "https://www.billeasy.in")!
        
        if application.canOpenURL(appUrl) {
            
            application.open(appUrl, options: [:], completionHandler: nil)
            
        }else{
            
            application.open(websiteUrl)
        }
        
    }
    
}

