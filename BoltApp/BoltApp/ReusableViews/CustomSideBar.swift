//
//  CustomSideBar.swift
//  BoltApp
//
//  Created by Mac on 13/08/2023.
//

import UIKit

class SidebarView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupViews()
    }
    
    func setupViews() {
        // Add your sidebar content views here
        let label = UILabel()
        label.text = "Sidebar Content"
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}

