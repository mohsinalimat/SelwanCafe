//
//  CornerButton.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//

import UIKit

class CornerButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }
    
    fileprivate func setup(){
        backgroundColor = Palette.tint
        setTitleColor(Palette.background, for: .normal)
        titleLabel?.font = .systemFont(ofSize: 15, weight: .medium)
    }
}
