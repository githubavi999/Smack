//
//  AvatarPickerVC.swift
//  Smack
//  Created by avi marathe on 30/08/17.
//  Copyright © 2017 avi marathe. All rights reserved.
//

import UIKit

class AvatarPickerVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{

    @IBOutlet weak var segmentControll: UISegmentedControl!
    @IBOutlet weak var collectionView: UICollectionView!
    
    //variables
    var avatar = AvatarType.dark
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self

    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "avatarCell", for: indexPath) as? AvatarCell {
        cell.configureCell(index: indexPath.item, type: avatar)
            return cell
            
        }
        return AvatarCell()
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 28
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        var numberOfColumns : CGFloat = 3
        if UIScreen.main.bounds.width > 320{
            numberOfColumns = 4
        }
        var spaceBetweenCells : CGFloat = 10
        let padding : CGFloat = 40
        let cellDimensions = ((collectionView.bounds.width - padding) - (numberOfColumns - 1) * spaceBetweenCells) / numberOfColumns

        return CGSize(width: cellDimensions, height: cellDimensions)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if avatar == .dark {
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        }else
        {
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        if avatar == .dark {
            UserDataService.instance.setAvatarName(avatarName: "dark\(indexPath.item)")
        }else
        {
            UserDataService.instance.setAvatarName(avatarName: "light\(indexPath.item)")
        }
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func backPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func segmentControlChanged(_ sender: Any) {
        
        if segmentControll.selectedSegmentIndex == 0
        {
            avatar = .dark
        }
        else
        {
            avatar = .light
        }
        
          collectionView.reloadData()
    }
}
