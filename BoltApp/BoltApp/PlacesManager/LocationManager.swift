//
//  AuthManager.swift
//  BoltApp
//
//  Created by Mac on 07/10/2022.
//

import Foundation
import CoreLocation
import MapKit

class LocationManager: NSObject {
    static let shared = LocationManager()
    func findLocation(with: String,
                      completion: @escaping (Result<[Location], Error>) -> Void)
    {
        let geoCoder = CLGeocoder()
        geoCoder.geocodeAddressString(with) { places, error in
            guard let places = places, error == nil else {
                completion(.success([]))
                return
            }
            
            let models: [Location] = places.compactMap { place in
                var nameComponents: [String] = []
                
                if let locationName = place.name {
                    nameComponents.append(locationName)
                }
                
                if let region = place.administrativeArea {
                    nameComponents.append(region)
                }
                
                if let locality = place.locality {
                    nameComponents.append(locality)
                }
                
                if let country = place.country {
                    nameComponents.append(country)
                }
                
                let combinedName = nameComponents.joined(separator: ", ")
                print("\n\(place)\n\n")
                
                let result = Location(name: combinedName,  coordinates: place.location?.coordinate)
                return result
            }
            completion(.success(models))
        }
    }
}
