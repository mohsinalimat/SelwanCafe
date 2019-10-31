//
//  BackgroundView.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//

import UIKit

class BackgroundView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    fileprivate func setup(){
        self.backgroundColor = Palette.itemBackground
    }
}
