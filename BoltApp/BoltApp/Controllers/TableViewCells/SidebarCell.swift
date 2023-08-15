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
        stack.spacing = 0
        stack.alignment = .leading
        return stack
    }()
    
    lazy var profileStackView: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [profileImage, nameLabelStackView])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .horizontal
        stack.spacing = 0
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
        self.addSubview(profileStackView)
        
        NSLayoutConstraint.activate([
            profileStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            profileStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 8),
            profileStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -8)
        ])
    }

}
