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
//        tableView.separatorInset = UIEdgeInsets(top: 0, left: 8, bottom: 0, right: 8)
        tableView.register(SidebarCell.self, forCellReuseIdentifier: "SidebarCell")
        return tableView
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
            sidebarTableView.reloadData()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        sidebarTableView.separatorStyle = .none
        self.backgroundColor = .white
        setupTableView()
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    func setupTableView() {
        self.addSubview(sidebarTableView)
       
        NSLayoutConstraint.activate([
            sidebarTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 120),
            sidebarTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            sidebarTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            sidebarTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -100),
        ])
    }
    
}

