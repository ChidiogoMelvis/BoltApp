//
//  ImageView.swift
//  BoltApp
//
//  Created by Mac on 15/08/2023.
//

import UIKit

class ProfileImageView: UIImageView {

    override init(image: UIImage?) {
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        self.image = image
        self.widthAnchor.constraint(equalToConstant: 40).isActive = true
        self.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
