//
//  Extension+Protocol.swift
//  BoltApp
//
//  Created by Mac on 10/10/2022.
//

import UIKit
import CoreLocation

protocol ResultLocationDelegate {
    func searchViewController(_ vc: ResultLocationViewController, didSelectLocation location: Location)
}

