//
//  SidebarCell.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

class SidebarCell: UITableViewCell {
    
    let profileImage = ImageView(image: UIImage(systemName: ""))
    
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
    
    let freeJourneysIcon = ImageView(image: UIImage(systemName: ""))
    
    let freeJourneysLabel = Label(label: "", textColor: .black)
    
    lazy var freeJourneysStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [freeJourneysIcon, freeJourneysLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()
    
    let paymentsIcon = ImageView(image: UIImage(systemName: ""))
    
    let paymentsLabel = Label(label: "", textColor: .black)
    
    lazy var paymentsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [paymentsIcon, paymentsLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()
    
    let historyIcon = ImageView(image: UIImage(systemName: ""))
    
    let historyLabel = Label(label: "", textColor: .black)
    
    lazy var historyStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [historyIcon, historyLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()
    
    let promotionsIcon = ImageView(image: UIImage(systemName: ""))
    
    let promotionsLabel = Label(label: "", textColor: .black)
    
    lazy var promotionsStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [promotionsIcon, promotionsLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()
    
    let supportIcon = ImageView(image: UIImage(systemName: ""))
    
    let supportLabel = Label(label: "", textColor: .black)
    
    lazy var supportStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [supportIcon, supportLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()
    
    let aboutIcon = ImageView(image: UIImage(systemName: ""))
    
    let aboutLabel = Label(label: "", textColor: .black)
    
    lazy var aboutStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [aboutIcon, aboutLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()
    
    let workRidesIcon = ImageView(image: UIImage(systemName: ""))
    
    let workRidesLabel = Label(label: "", textColor: .black)
    
    lazy var workRidesStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [workRidesIcon, workRidesLabel])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 14
        stack.alignment = .fill
        return stack
    }()

    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        setupViews()
        // Configure the view for the selected state
    }
    
    func setupViews() {
        let subviews = [profileStackView, freeJourneysStackView, paymentsStackView, historyStackView, promotionsStackView, supportStackView, aboutStackView, workRidesStackView]
        for subview in subviews {
            self.addSubview(subview)
        }
        
        NSLayoutConstraint.activate([
            profileStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            profileStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            profileStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            
            freeJourneysStackView.topAnchor.constraint(equalTo: profileStackView.bottomAnchor, constant: 50),
            freeJourneysStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            freeJourneysStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
            
            paymentsStackView.topAnchor.constraint(equalTo: freeJourneysStackView.bottomAnchor, constant: 50),
            paymentsStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            paymentsStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8),
        ])
    }

}
