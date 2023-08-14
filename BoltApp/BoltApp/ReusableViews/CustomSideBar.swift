//
//  CustomSideBar.swift
//  BoltApp
//
//  Created by Mac on 13/08/2023.
//

import UIKit

class CustomSidebar: UIView, UITableViewDelegate, UITableViewDataSource {
    
//    let dismissButton = Button(image: UIImage(systemName: "xmark"), label: "", btnTitleColor: .clear, backgroundColor: .clear, radius: 0, imageColor: .black)
    
    lazy var sidebarTableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(SidebarCell.self, forCellReuseIdentifier: "SidebarCell")
        return tableView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setupTableView()
//        dismissButton.addTarget(self, action: #selector(dismissSidebar), for: .touchUpInside)
        
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
    }
    
    @objc func dismissSidebar() {
        print("Dismiss callback executed")
            //dismissCallback?()
    }
    
    func setupTableView() {
        self.addSubview(sidebarTableView)
        //self.addSubview(dismissButton)
        NSLayoutConstraint.activate([
//            dismissButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
//            dismissButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
//
            sidebarTableView.topAnchor.constraint(equalTo: self.topAnchor, constant: 200),
            sidebarTableView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 14),
            sidebarTableView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -14),
            sidebarTableView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -20)
        ])
    }
    
}

