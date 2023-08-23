//
//  CustomSideBar.swift
//  BoltApp
//
//  Created by Mac on 13/08/2023.
//

import UIKit

class CustomSidebar: UIView, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
    lazy var sidebarCollectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.minimumLineSpacing = 2
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.collectionViewLayout = layout
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.register(SidebarCollectionViewCell.self, forCellWithReuseIdentifier: "SidebarCollectionViewCell")
        return collectionView
    }()

    var tableData: [SidebarItem] = [profileImageItem,
                                    journeyItem,
                                    paymentsItem,
                                    historyItem,
                                    promotionsItem,
                                    supportItem,
                                    aboutItem,
                                    workRidesItem] {
        didSet {
            sidebarCollectionView.reloadData()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //sidebarCollectionView.separatorStyle = .singleLine
        self.backgroundColor = .white
        setupTableView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    func setupTableView() {
        self.addSubview(sidebarCollectionView)
       
        NSLayoutConstraint.activate([
            sidebarCollectionView.topAnchor.constraint(equalTo: self.topAnchor, constant: 120),
            sidebarCollectionView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            sidebarCollectionView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            sidebarCollectionView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
        ])
    }
    
}

