//
//  AvatarCell.swift
//  Smack
//
//  Created by avi marathe on 30/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super .awakeFromNib()
        setUpView()
    }
    
    func setUpView()
    {
        self.layer.backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    
    
    
    
    
    
    
    
}
