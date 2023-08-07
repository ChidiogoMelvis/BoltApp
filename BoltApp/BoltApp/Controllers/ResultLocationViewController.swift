//
//  ResultLocationViewController.swift
//  BoltApp
//
//  Created by Mac on 10/10/2022.
//

import UIKit
import CoreLocation
import MapKit

class ResultLocationViewController: UIViewController, UITextFieldDelegate {
    
    //var currentLocation: CLLocationCoordinate2D?

    var delegate: ResultLocationViewControllerDelegate?
    
    lazy var greetingLabel: UILabel = {
        let label = UILabel()
        label.text = "Nice to see you!"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        
        return label
    }()
    
    lazy var directionLabel: UILabel = {
        let label = UILabel()
        label.text = "Where are you going?"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 18, weight: .medium)
        
        return label
    }()
    
    lazy var textField: UITextField = {
        let textField = UITextField()
        textField.placeholder = ""
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.cornerRadius = 8
        textField.backgroundColor = .systemGray5
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 50))
        textField.leftViewMode = .always
        textField.delegate = self
        
        return textField
    }()
    
    lazy var tableview: UITableView = {
        let table = UITableView()
        table.dataSource = self
        table.delegate = self
        table.backgroundColor = .gray
        table.translatesAutoresizingMaskIntoConstraints = false
        table.register(Cell.self, forCellReuseIdentifier: "Cell")
        
        return table
    }()
    
    var locations = [Location]()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .secondarySystemBackground
        setupViews()
    }
    
    func setupViews() {
        let subViews = [greetingLabel, directionLabel, textField, tableview]
        for subView in subViews {
            view.addSubview(subView)
        }
        
        NSLayoutConstraint.activate([
            greetingLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20),
            greetingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            directionLabel.topAnchor.constraint(equalTo: greetingLabel.bottomAnchor, constant: 15),
            directionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            
            textField.topAnchor.constraint(equalTo: directionLabel.bottomAnchor, constant: 15),
            textField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            textField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            textField.heightAnchor.constraint(equalToConstant: 49),
            textField.widthAnchor.constraint(equalToConstant: 350),
            
            tableview.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 5),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        if let text = textField.text, !text.isEmpty {
            LocationManager.shared.findLocation(with: text) { [weak self] result in
                switch result {
                case .success(let locations):
                    self?.locations = locations
                    self?.tableview.reloadData()
                case .failure(let error):
                    print("\(error.localizedDescription)")
                }
            }
        }
        return true
    }

    
}
