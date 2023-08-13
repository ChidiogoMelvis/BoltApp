//
//  Button.swift
//  BoltApp
//
//  Created by Mac on 12/08/2023.
//

import UIKit


class Button: UIButton {
    
    init(image: UIImage?,label: String, btnColor: UIColor, backgroundColor: UIColor, radius: CGFloat, imageColor: UIColor) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.setImage(image, for: .normal)
        self.setTitle(label, for: .normal)
        self.setTitleColor(btnColor, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = radius
        self.tintColor = imageColor
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
