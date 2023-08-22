//
//  SidebarCell.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

class SidebarCell: UITableViewCell, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    let profileImage = ProfileImageView(image: UIImage(systemName: ""))
    
    let identifier = "SidebarCell"
    
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
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleImageTap))
        profileImage.addGestureRecognizer(tapGesture)
        profileImage.isUserInteractionEnabled = true
        
    }
    
    func setupViews() {
        let subviews = [profileStackView, freeJourneysStackView, paymentsStackView, historyStackView, promotionsStackView, supportStackView, aboutStackView, workRidesStackView]
        for subview in subviews {
            self.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            profileStackView.topAnchor.constraint(equalTo: self.topAnchor),
            profileStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            freeJourneysStackView.topAnchor.constraint(equalTo: profileStackView.bottomAnchor, constant: 0),
            freeJourneysStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            paymentsStackView.topAnchor.constraint(equalTo: freeJourneysStackView.bottomAnchor, constant: 0),
            paymentsStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            historyStackView.topAnchor.constraint(equalTo: paymentsStackView.bottomAnchor, constant: 0),
            historyStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            promotionsStackView.topAnchor.constraint(equalTo: historyStackView.bottomAnchor, constant: 0),
            promotionsStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            supportStackView.topAnchor.constraint(equalTo: promotionsStackView.bottomAnchor, constant: 0),
            supportStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            aboutStackView.topAnchor.constraint(equalTo: supportStackView.bottomAnchor, constant: 0),
            aboutStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            
            workRidesStackView.topAnchor.constraint(equalTo: aboutStackView.bottomAnchor, constant: 0),
            workRidesStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
        ])
    }
    
    @objc private func handleImageTap() {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = self
        imagePicker.sourceType = .photoLibrary
    }
    
}
