//
//  UserCollectionViewCell.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//

import UIKit

class UserCollectionViewCell: UICollectionViewCell {
    
    
    @IBOutlet weak var itemBackgroundView: BackgroundView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!
    @IBOutlet weak var button: UIButton!
    
    @IBAction func buttonTapped(_ sender: Any) {
    }
}
