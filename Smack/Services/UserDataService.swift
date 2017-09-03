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
    
    func returnColor(components : String)-> UIColor
    {
       
        let scanner = Scanner(string: components)
        var skipped = CharacterSet(charactersIn: "[], ")
        var comma = CharacterSet(charactersIn: ",")
        
        scanner.charactersToBeSkipped = skipped
        
        var r ,g ,b, a : NSString?
        
        scanner.scanUpToCharacters(from: comma, into: &r)
        scanner.scanUpToCharacters(from: comma, into: &g)
        scanner.scanUpToCharacters(from: comma, into: &b)
        scanner.scanUpToCharacters(from: comma, into: &a)
        
        let defaultColor = UIColor.lightGray
        
        guard let rUnwrapped =  r else {return defaultColor }
        guard let gUnwrapped = g else {return defaultColor }
        guard let bUnwrapped = b else {return defaultColor }
        guard let aUnwrapped = a else {return defaultColor }
        
        let rFloat = CGFloat(rUnwrapped.doubleValue)
        let gFloat = CGFloat(gUnwrapped.doubleValue)
        let bFloat = CGFloat(bUnwrapped.doubleValue)
        let aFloat = CGFloat(aUnwrapped.doubleValue)
        
        var newUIColor = UIColor(red: rFloat, green: gFloat, blue: bFloat, alpha: aFloat)
        
        
        return newUIColor
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
