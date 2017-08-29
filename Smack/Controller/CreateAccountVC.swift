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
    
    //Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5,0.5,0.5,1]"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func crossPressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)

    }
    

    @IBAction func createAcctPressed(_ sender: Any) {
         guard let name = usernameTxt.text , usernameTxt.text != "" else {return}
         guard let email = emailTxt.text , emailTxt.text != "" else {return}
         guard let pass = passwordTxt.text , passwordTxt.text != "" else{return}
        AuthService.instance.registerUser(email: email, password: pass) { (success) in
            if success{
                AuthService.instance.loginUser(email: email, password: pass, completion: { (success) in
                    if success{
                        AuthService.instance.createUser(name: name, email: email, avatarName: self.avatarName, avatarColor: self.avatarColor, completion: { (success) in
                            if success{
                                print(UserDataService.instance.name,UserDataService.instance.avatarName)
                                self.performSegue(withIdentifier: UNWIND_TO_CHANNEL, sender: nil)
                                
                            }
                        })
                    }
                })
            }
        }
    }
    
    
    @IBAction func chooseAvatarPressed(_ sender: Any) {
    }
    
    
    @IBAction func backgroundColorChoosePressed(_ sender: Any) {
    }
    
    
    
    
    
    
    
}
