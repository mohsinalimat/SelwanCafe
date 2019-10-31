//
//  HomeViewController.swift
//  SelwanCafe
//
//  Created by Selwan IOS on 10/23/19.
//  Copyright © 2019 Hussein AlRyalat. All rights reserved.
//

import UIKit
import GenericDataSources

class HomeViewController: UIViewController {

    var dataSource: UsersCollectionDataSource? {
        didSet {
            if let ds = dataSource {
                collectionView.ds_useDataSource(ds)
                collectionView.ds_reloadData()
            }
        }
    }
    
    var collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.minimumLineSpacing = 15
        layout.minimumInteritemSpacing = 15
        layout.sectionInset = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .white
        
        return collectionView
    }()
    
    var usersFetcher: UsersFetcher = FetchersDependencies.usersFetcher
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        
        view.addSubview(collectionView)
        collectionView.pinToSafeArea()
        
        registerCells()
        setupDataSource()
        performDataLoad()
    }
    
    func setupDataSource(){
        // Subclass implementation..
        dataSource = .init()
    }
    
    func registerCells(){
        // Subclass implementation..
        collectionView.ds_register(cellNib: UserCollectionViewCell.self)
    }
    
    func performDataLoad(){
        // Subclass implementation..
        self.dataSource?.items = usersFetcher.users()
    }
}
