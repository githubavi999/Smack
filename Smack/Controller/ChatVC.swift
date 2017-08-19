//
//  ChatVC.swift
//  Smack
//
//  Created by avi marathe on 17/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class ChatVC: UIViewController {

    @IBOutlet weak var menuBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuBtn.addTarget(self.revealViewController(), action: #selector(SWRevealViewController.revealToggle(_:)), for: .touchUpInside)
        self.view.addGestureRecognizer(self.revealViewController().tapGestureRecognizer())
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
      
        
     }

    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
