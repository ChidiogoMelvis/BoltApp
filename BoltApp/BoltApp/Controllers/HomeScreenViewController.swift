//
//  HomeScreenViewController.swift
//  BoltApp
//
//  Created by Mac on 07/10/2022.
//

import UIKit
import MapKit
import FloatingPanel
import CoreLocation

class HomeScreenViewController: UIViewController, ResultLocationViewControllerDelegate {
    
    let locations = [Location]()
    
    let panel = FloatingPanelController()
    
    lazy var mapView: MKMapView = {
      let mapView = MKMapView()
        mapView.overrideUserInterfaceStyle = .dark
        return mapView
     }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        mapView.showsUserLocation = true
        view.addSubview(mapView)
        
        let resultVC = ResultLocationViewController()
        resultVC.delegate = self
        
        panel.set(contentViewController: ResultLocationViewController())
        panel.addPanel(toParent: self)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mapView.frame = view.bounds
        mapView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: view.frame.size.height)
        
    }
    
//    func searchViewController(_vc: ResultLocationViewController, didSelectLocationWith coordinates: CLLocationCoordinate2D?) {
//        guard let coordinates = coordinates else { return }
//
//        let pin = MKPointAnnotation()
//        pin.coordinate = coordinates
//        mapView.addAnnotation(pin)
//
//        mapView.setRegion(MKCoordinateRegion(center: coordinates,
//                                            span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7)),
//                          animated: true)
//    }
    
    func searchViewController(_vc vc: ResultLocationViewController, didSelectLocationWith coordinates: CLLocationCoordinate2D?) {
            guard let coordinates = coordinates else { return }
            panel.move(to: .tip, animated: true)

            mapView.removeAnnotations(mapView.annotations)

            let pin = MKPointAnnotation()
            pin.coordinate = coordinates
            mapView.addAnnotation(pin)

            mapView.setRegion(MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7)), animated: true)
        }

}
