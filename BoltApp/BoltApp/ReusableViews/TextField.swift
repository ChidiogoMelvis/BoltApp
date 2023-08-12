//
//  TextField.swift
//  BoltApp
//
//  Created by Mac on 12/08/2023.
//

import UIKit

class TextField: UITextField {
    init(placeholder: String, isSecureTextEntry: Bool) {
            super.init(frame: .zero)
            leftView = UIView(frame: CGRect(x: 0, y: 0, width: 35, height: self.frame.height))
            leftViewMode = .always
        //tintColor = .black
            translatesAutoresizingMaskIntoConstraints = false
            layer.borderWidth = 1
            font = UIFont(name: "", size: 18)
            textColor = .systemGray6
            layer.borderColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
            layer.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            layer.cornerRadius = 5
        autocapitalizationType = .none
        autocorrectionType = .no
        self.placeholder = placeholder
        self.isSecureTextEntry = isSecureTextEntry
        //self.placeholder = placeholder
            attributedPlaceholder = NSAttributedString(string: placeholder, attributes: [NSAttributedString.Key.foregroundColor: UIColor.gray])
        }
        
        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
        
    }
