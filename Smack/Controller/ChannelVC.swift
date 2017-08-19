//
//  ChannelVC.swift
//  Smack
//
//  Created by avi marathe on 17/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

  

}
