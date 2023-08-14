//
//  DismissControl.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

class DismissControl: UIControl {
    override func point(inside point: CGPoint, with event: UIEvent?) -> Bool {
        return point.x > frame.width / 2
    }
}

