//
//  AuthService.swift
//  Smack
//
//  Created by avi marathe on 23/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AuthService
{
    
    static let instance = AuthService()
    
    let defaults = UserDefaults.standard
    
    var isLonggedIn : Bool{
        get{
                   return defaults.bool(forKey: LOGGED_IN_KEY)
              }
        
        set{
                   defaults.set(newValue, forKey: LOGGED_IN_KEY)
              }
       
     }
    
    var authToken : String{
        get{
             return defaults.value(forKey: TOKEN_KEY) as! String
     }
        
        set{
            defaults.set(newValue, forKey: TOKEN_KEY)
     }
    
    }
    
    var userEmail : String{
        
        get{
            return defaults.value(forKey: USER_EMAIL) as! String
        }
        
        set{
            defaults.set(newValue, forKey: USER_EMAIL)
        }
     
    }
    
    func registerUser(email : String, password : String, completion : @escaping completionHandler )
    {
        
        var lowerCaseEmail = email.lowercased()
        
        let body : [String:Any] = [
            "email" : lowerCaseEmail,
            "password" : password
        
        ]
        
        Alamofire.request(URL_REGISTER, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseString { (responce) in
            if responce.result.error == nil {
                completion(true)
            }
            else{
                completion(false)
                debugPrint(responce.result.error as Any)
            }
        }
        
    }
    
    
    
    func loginUser(email:String,password:String,completion:@escaping completionHandler)
    {
        
        var lowerCaseEmail = email.lowercased()
        
        let body : [String:Any] = [
            "email" : lowerCaseEmail,
            "password" : password
        ]
        
        Alamofire.request(URL_LOGIN, method: .post, parameters: body, encoding: JSONEncoding.default, headers: HEADER).responseJSON { (responce) in
            if responce.result.error == nil{
                //By general JSON way
//                if let json = responce.result.value as? Dictionary<String,Any>{
//                   if let email = json["user"] as? String
//                    {
//                        self.userEmail = email
//                    }
//                    if let token = json["token"] as? String
//                    {
//                        self.authToken = token
//                    }
//
//                }
                //Using SWIFTY JSON
                guard let data = responce.data else {return}
                let json = JSON(data:data)
                self.userEmail = json["user"].stringValue
                self.authToken = json["token"].stringValue
                
                self.isLonggedIn = true
                completion(true)
            }else
             {
                    completion(false)
                    debugPrint(responce.result.error as Any)
              }
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
