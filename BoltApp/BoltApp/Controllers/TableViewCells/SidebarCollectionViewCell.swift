//
//  SidebarCollectionViewCell.swift
//  BoltApp
//
//  Created by Mac on 23/08/2023.
//

import UIKit

class SidebarCollectionViewCell: UICollectionViewCell {
    
    let identifier = "SidebarCollectionViewCell"
    
    let profileImage = ProfileImageView(image: UIImage(systemName: ""))
    
    let profileName = Label(label: "", textColor: .black)
    
    let viewProfileLabel = Label(label: "", textColor: .lightGray)
    lazy var nameLabelStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [profileName, viewProfileLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 1
        stack.alignment = .leading
        return stack
    }()
    
    lazy var profileStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [profileImage, nameLabelStackView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 2
        stack.alignment = .fill
        return stack
    }()
    
    let freeJourneysIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let freeJourneysLabel = Label(label: "", textColor: .black)
    
    lazy var freeJourneysStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [freeJourneysIcon, freeJourneysLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    let paymentsIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let paymentsLabel = Label(label: "", textColor: .black)
    
    lazy var paymentsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [paymentsIcon, paymentsLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    let historyIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let historyLabel = Label(label: "", textColor: .black)
    
    lazy var historyStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [historyIcon, historyLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    let promotionsIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let promotionsLabel = Label(label: "", textColor: .black)
    
    lazy var promotionsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [promotionsIcon, promotionsLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    let supportIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let supportLabel = Label(label: "", textColor: .black)
    
    lazy var supportStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [supportIcon, supportLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    let aboutIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let aboutLabel = Label(label: "", textColor: .black)
    
    lazy var aboutStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [aboutIcon, aboutLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    let workRidesIcon = CustomImageView(image: UIImage(systemName: ""))
    
    let workRidesLabel = Label(label: "", textColor: .black)
    
    lazy var workRidesStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [workRidesIcon, workRidesLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 20
        stack.alignment = .leading
        return stack
    }()
    
    lazy var parentStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [profileStackView, promotionsStackView, freeJourneysStackView, paymentsStackView, historyStackView, promotionsStackView, supportStackView, aboutStackView, workRidesStackView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 1
        stack.alignment = .leading
        return stack
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
        required init?(coder: NSCoder) {
            super.init(coder: coder)
        }
    
    func setupViews() {
        self.addSubview(parentStackView)
        
        NSLayoutConstraint.activate([
            parentStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            parentStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
        ])
    }
    
}
