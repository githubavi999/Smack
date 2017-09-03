//
//  Circleview.swift
//  Smack
//
//  Created by avi marathe on 02/09/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit
@IBDesignable
class Circleview: UIImageView {

    override func awakeFromNib() {
        
        setupView()
    }
    
    func setupView()
    {
       var r =  self.layer.cornerRadius = self.frame.width / 2
       self.clipsToBounds = true
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
    
}
