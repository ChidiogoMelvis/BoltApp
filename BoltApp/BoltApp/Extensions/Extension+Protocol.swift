//
//  Extension+Protocol.swift
//  BoltApp
//
//  Created by Mac on 10/10/2022.
//

import UIKit
import CoreLocation

protocol ResultLocationViewControllerDelegate {
    func searchViewController(_vc: ResultLocationViewController, didSelectLocationWith coordinates: CLLocationCoordinate2D?)
}

