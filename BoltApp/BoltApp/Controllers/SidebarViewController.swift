//
//  SidebarViewController.swift
//  BoltApp
//
//  Created by Mac on 24/08/2023.
//

import UIKit

class SidebarViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    
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
    
    weak var delegate: SidebarViewControllerDelegate?
       
    let toggleBackBtn = Button(image: UIImage(systemName: "xmark"), label: "", btnTitleColor: .clear, backgroundColor: .clear, radius: 0, imageColor: .black)

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
        
    }
    
}
