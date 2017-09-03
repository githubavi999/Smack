//  CreateAccountVC.swift
//  Smack
//
//  Created by avi marathe on 21/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var spinner: UIActivityIndicatorView!
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var profileImg: UIImageView!
    
    //Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5,0.5,0.5,1]"
    var bgColor : UIColor?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        
        //for dissmissing Keyboard
        var tap = UITapGestureRecognizer(target: self, action: #selector (CreateAccountVC.handletap))
        view.addGestureRecognizer(tap)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
      if UserDataService.instance.avatarName != ""
        {
            profileImg.image = UIImage(named : UserDataService.instance.avatarName)
            avatarName = UserDataService.instance.avatarName
        }
        
        if avatarName.contains("light") && bgColor == nil {
            profileImg.backgroundColor = UIColor.lightGray
        }
    }
    
    
    
    
    

    @IBAction func crossPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)

    }
    

    @IBAction func createAcctPressed(_ sender: Any) {
        spinner.isHidden = false
        spinner.startAnimating()
        
         guard let name = usernameTxt.text , usernameTxt.text != "" else {return}
         guard let email = emailTxt.text , emailTxt.text != "" else {return}
         guard let pass = passwordTxt.text , passwordTxt.text != "" else{return}
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success{
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success{
                                self.spinner.isHidden = true
                                self.spinner.stopAnimating()
                                self.performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
                                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGED, object: nil)
                            }
                        })
                    }
                })
            }
        }
    }
    
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_AVATAR_PICKER, sender: nil)
    }
    
    
    @IBAction func backgroundColorChoosePressed(_ sender: Any) {
        let r = CGFloat(arc4random_uniform(255)) / 255
        let g = CGFloat(arc4random_uniform(255)) / 255
        let b = CGFloat(arc4random_uniform(255)) / 255
        
        
        UIView.animate(withDuration: 0.2) {
            self.profileImg.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)

            
        }
    }
    
        func setView()
        {
            usernameTxt.attributedPlaceholder = NSAttributedString(string: "username", attributes: [NSAttributedStringKey.foregroundColor: smackPurplePlaceholder])
          
            emailTxt.attributedPlaceholder = NSAttributedString(string: "email", attributes: [NSAttributedStringKey.foregroundColor:smackPurplePlaceholder])
           
            passwordTxt.attributedPlaceholder = NSAttributedString(string: "password", attributes: [NSAttributedStringKey.foregroundColor : smackPurplePlaceholder])
            
            spinner.isHidden = true
        
            
        }
    
   @objc func handletap()
    {
        view.endEditing(true)
    }
    
    
    
    
    
    
    
}
