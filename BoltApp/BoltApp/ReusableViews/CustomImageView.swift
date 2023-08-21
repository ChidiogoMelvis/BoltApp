//
//  CustomImageView.swift
//  BoltApp
//
//  Created by Mac on 21/08/2023.
//

import UIKit

class CustomImageView: UIImageView {

    override init(image: UIImage?) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = image
        self.widthAnchor.constraint(equalToConstant: 20).isActive = true
        self.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
