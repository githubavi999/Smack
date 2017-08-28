//
//  CreateAccountVC.swift
//  Smack
//
//  Created by avi marathe on 21/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    
    @IBOutlet weak var emailTxt: UITextField!
    
    @IBOutlet weak var passwordTxt: UITextField!
    
    @IBOutlet weak var profileImg: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func crossPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)

    }
    

    @IBAction func createAcctPressed(_ sender: Any) {
        guard let email = emailTxt.text , emailTxt.text != "" else {return}
        guard let pass = passwordTxt.text , passwordTxt.text != "" else{return}
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                print("registered user!")
            }
        }
    }
    
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
    }
    
    
    @IBAction func backgroundColorChoosePressed(_ sender: Any) {
    }
    
    
    
    
    
    
    
}
