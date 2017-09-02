//
//  AvatarCell.swift
//  Smack
//
//  Created by avi marathe on 30/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit
enum AvatarType {
    case dark
    case light
}

class AvatarCell: UICollectionViewCell {
    
    @IBOutlet weak var avatarImg: UIImageView!
    
    override func awakeFromNib() {
        super .awakeFromNib()
        setUpView()
    }
    
    func configureCell(index : Int , type : AvatarType)
    {
        if type == AvatarType.dark{
            avatarImg.image = UIImage(named: "dark\(index)")
            self.layer.backgroundColor = UIColor.lightGray.cgColor
        }else{
            avatarImg.image = UIImage(named:"light\(index)")
            self.layer.backgroundColor = UIColor.gray.cgColor
        }
        
    }
    
    
    
    
    
    
    func setUpView()
    {
        self.layer.backgroundColor = #colorLiteral(red: 0.6642242074, green: 0.6642400622, blue: 0.6642315388, alpha: 1)
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }
    
    
    
    
    
    
    
    
    
}
