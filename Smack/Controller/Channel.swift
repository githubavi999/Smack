//
//  ChannelVC.swift
//  Smack
//
//  Created by avi marathe on 17/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    @IBOutlet weak var loginBtn: UIButton!
    @IBAction func pepareForUnwind(segue : UIStoryboardSegue)
    {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

  
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender:nil)
    }
    
}
