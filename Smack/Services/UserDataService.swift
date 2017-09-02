//
//  UserDataService.swift
//  Smack
//
//  Created by avi marathe on 29/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation

class UserDataService
{
   static let instance = UserDataService()
    public private(set) var id = ""
    public private(set) var avatarName = ""
    public private(set) var avatarColor = ""
    public private(set) var email = ""
    public private(set) var name = ""
    
    
    func userData(id : String,avatarName : String, avatarColor : String, email : String, name : String)
    {
        self.id = id
        self.avatarName = avatarName
        self.avatarColor = avatarColor
        self.email = email
        self.name = name
    }
    
    func setAvatarName(avatarName:String)
    {
        self.avatarName = avatarName
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
