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


//Completion Handler
typealias completionHandler = (_ Success : Bool) -> ()

//Segues
let TO_LOGIN = "toLogin"
let TO_CREATE_ACCOUNT = "toCreateAccount"
let  UNWIND_TO_CHANNEL = "unwindToChannel"


//User Defaults
let TOKEN_KEY = "token"
let LOGGED_IN_KEY = "loggedIn"
let USER_EMAIL = "userEmail"


