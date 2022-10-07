//
//  CustomTextField.swift
//  BoltApp
//
//  Created by Mac on 07/10/2022.
//

import UIKit

class CustomTextField: UITextField {
    
    init(title: String) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        layer.borderWidth = 2
        layer.borderColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
        layer.cornerRadius = 5
        backgroundColor = .systemGray6
        heightAnchor.constraint(equalToConstant: 54).isActive = true
        widthAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
