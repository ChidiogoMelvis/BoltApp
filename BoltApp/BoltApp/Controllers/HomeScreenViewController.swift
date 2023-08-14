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

class HomeScreenViewController: UIViewController, ResultLocationDelegate {
    
    let locations = [Location]()
    
    let panel = FloatingPanelController()
    
    let sidebarView = SidebarView()
    
    var isSidebarVisible = false
    
    let sideBarButton = Button(image: UIImage(systemName: "text.justify"), label: "", btnTitleColor: .clear, backgroundColor: .clear, radius: 0, imageColor: .black)
    
    lazy var mapView: MKMapView = {
        let mapView = MKMapView()
        mapView.overrideUserInterfaceStyle = .dark
        return mapView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButton()
        view.backgroundColor = .white
        mapView.showsUserLocation = true
        view.addSubview(mapView)
        setupResultVC()
        tapSidebarBack()
        sideBarButton.addTarget(self, action: #selector(showSidebarButtonTapped), for: .touchUpInside)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        mapView.frame = view.bounds
        mapView.frame = CGRect(x: 0, y: 100, width: view.bounds.width, height: view.bounds.height)
    }
    
    func setupResultVC() {
        let resultVC = ResultLocationViewController()
        resultVC.delegate = self
        
        panel.set(contentViewController: resultVC)
        panel.addPanel(toParent: self)
    }
    
    func searchViewController(_ vc: ResultLocationViewController, didSelectLocation location: Location) {
        panel.move(to: .tip, animated: true)
        
        mapView.removeAnnotations(mapView.annotations)
        
        if let coordinates = location.coordinates {
            let pin = MKPointAnnotation()
            pin.coordinate = coordinates
            pin.title = location.name
            mapView.addAnnotation(pin)
            
            mapView.setRegion(MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 0.7, longitudeDelta: 0.7)), animated: true)
        }
    }
    
    func setupButton() {
        view.addSubview(sideBarButton)
        NSLayoutConstraint.activate([
            sideBarButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            sideBarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14)
        ])
    }
    
    func tapSidebarBack() {
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(handleTap(_:)))
               view.addGestureRecognizer(tapGestureRecognizer)
    }
    
}
