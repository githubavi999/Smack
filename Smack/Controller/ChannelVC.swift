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
    
    @IBOutlet weak var userImg: UIImageView!
    @IBAction func pepareForUnwind(segue : UIStoryboardSegue)
    {

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
        NotificationCenter.default.addObserver(self, selector: #selector(ChannelVC.userDataDidChange(_:)), name: NOTIF_USER_DATA_DID_CHANGED, object: nil)
    }

  
    @IBAction func loginBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_LOGIN, sender:nil)
    }
    
    
    
    @objc func userDataDidChange(_ notif:Notification)
    {
        if AuthService.instance.isLonggedIn {
            loginBtn.setTitle(UserDataService.instance.name, for: .normal)
            userImg.image = UIImage(named: UserDataService.instance.avatarName)
        userImg.backgroundColor = UserDataService.instance.returnColor(components: UserDataService.instance.avatarColor)
        
        }else {
                loginBtn.setTitle("login", for: .normal)
                userImg.image = UIImage(named:"menuprofileIcon")
                userImg.backgroundColor = UIColor.clear
            
          }
    
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
