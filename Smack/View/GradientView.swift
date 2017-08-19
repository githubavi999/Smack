//
//  GradientView.swift
//  Smack
//
//  Created by avi marathe on 17/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit
@IBDesignable

class GradientView: UIView {
    
     @IBInspectable var topColor : UIColor = UIColor.blue{  
        didSet{
                        self.setNeedsLayout()
                   }
     }
    
     @IBInspectable var bottomColor : UIColor = .green{
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
        
    }
    
    
    
    
    
 
    
    
    
    
    
    
    
    
    
    
    
    
}
