//
//  UsersCollectionDataSource.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//

import Foundation
import GenericDataSources

class UsersCollectionDataSource: BasicDataSource<User, UserCollectionViewCell> {
    
    enum GridType {
        case oneLine
        case grid
    }
    
    var numberOfItemsPerRow: Int {
        return 2
    }
    
    var ratio: CGFloat {
        return 1.25
    }
    
    override func ds_collectionView(_ collectionView: GeneralCollectionView, configure cell: UserCollectionViewCell, with item: User, at indexPath: IndexPath) {
        
    }
        
    override func ds_collectionView(_ collectionView: GeneralCollectionView, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let shouldTakeHeight: Bool = true//type != .oneLine
        let insets: CGFloat
        let spacing: CGFloat
        
        if let layout = ((collectionView as? UICollectionView)?.collectionViewLayout as? UICollectionViewFlowLayout) {
            spacing = shouldTakeHeight ? layout.minimumInteritemSpacing : layout.minimumLineSpacing
            insets = shouldTakeHeight ? layout.sectionInset.left + layout.sectionInset.right : layout.sectionInset.top + layout.sectionInset.bottom
        } else {
            insets = 20
            spacing = 5
        }
           
        let totalWidth = collectionView.size.width
        let numberOfItems: CGFloat = CGFloat(numberOfItemsPerRow)
        
        let itemWidth = (totalWidth - insets - (numberOfItems * spacing)) / (numberOfItems) - 1
        
        return CGSize(width: itemWidth, height: itemWidth * ratio)
    }
}
