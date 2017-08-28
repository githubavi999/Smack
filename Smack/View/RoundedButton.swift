//
//  RoundedButton.swift
//  Smack
//
//  Created by avi marathe on 27/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {
    
    @IBInspectable var cornerRadius : CGFloat = 3.0{
        didSet{
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    
    override func awakeFromNib() {
        super.prepareForInterfaceBuilder()
        self.layer.cornerRadius = cornerRadius
    }
    
    

    

}
