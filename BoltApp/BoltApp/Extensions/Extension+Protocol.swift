//
//  Extension+Protocol.swift
//  BoltApp
//
//  Created by Mac on 10/10/2022.
//

import UIKit
import CoreLocation

//protocol ResultLocationViewControllerDelegate {
//    func searchViewController(_ vc: ResultLocationViewController, didSelectLocationWith coordinates: CLLocationCoordinate2D?)
//}

protocol ResultLocationViewControllerDelegate {
    func searchViewController(_ vc: ResultLocationViewController, didSelectLocationWith location: Location)
}

protocol ResultLocationDelegate {
    func searchViewController(_ vc: ResultLocationViewController, didSelectLocation location: Location)
}

