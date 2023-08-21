//
//  CustomSideBar.swift
//  BoltApp
//
//  Created by Mac on 13/08/2023.
//

import UIKit

class CustomSidebar: UIView, UITableViewDelegate, UITableViewDataSource {
    
    lazy var sidebarTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SidebarCell.self, forCellReuseIdentifier: "SidebarCell")
        return tableView
    }()
    
    let signuDriveButton = Button(image: UIImage(systemName: ""), label: "SIGN UP TO DRIVE", btnTitleColor: .white, backgroundColor: #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1), radius: 25, imageColor: .clear)
    

    var tableData: [SidebarItem] = [profileImageItem,
                                    journeyItem,
                                    paymentsItem,
                                    historyItem,
                                    promotionsItem,
                                    supportItem,
                                    aboutItem,
                                    workRidesItem] {
        didSet {
            sidebarTableView.reloadData()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        setupTableView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    func setupTableView() {
        self.addSubview(sidebarTableView)
        self.addSubview(signuDriveButton)
        
        NSLayoutConstraint.activate([
            sidebarTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 120),
            sidebarTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            sidebarTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            sidebarTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
            
            signuDriveButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            signuDriveButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            signuDriveButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -40),
            signuDriveButton.heightAnchor.constraint(equalToConstant: 46)
        ])
    }
    
}

