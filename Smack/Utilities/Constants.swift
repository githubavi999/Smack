//
//  Constants.swift
//  Smack
//
//  Created by avi marathe on 21/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import Foundation

//BASE URLS
let  BASE_URL = "https://chattychatindia.herokuapp.com/v1/"
let URL_REGISTER = "\(BASE_URL)account/register"
let URL_LOGIN = "\(BASE_URL)account/login"
let URL_USER_ADD =  "\(BASE_URL)user/add"

//Completion Handler
typealias completionHandler = (_ Success : Bool) -> ()

//Colors

var smackPurplePlaceholder = #colorLiteral(red: 0, green: 0.4784313725, blue: 1, alpha: 0.5)

//Notification constant
let NOTIF_USER_DATA_DID_CHANGED = Notification.Name("notifUserDataChanged")




//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let  UNWIND_TO_CHANNEL = "unwindToChannel"
let TO_AVATAR_PICKER = "toAvatarPicker"

//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


//Header

let HEADER =  [
    "containt-Type" : "application/json; charset=utf-8"
]











