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
    
    var delegate: ResultLocationDelegate?
    
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
        table.register(ResultLocationCell.self, forCellReuseIdentifier: "Cell")
        
        return table
    }()
    
    var locations: [Location] = [] {
        didSet {
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
        }
    }
    
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
            textField.heightAnchor.constraint(equalToConstant: 45),
            //textField.widthAnchor.constraint(equalToConstant: 300),
            
            tableview.topAnchor.constraint(equalTo: textField.bottomAnchor, constant: 5),
            tableview.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableview.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableview.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        let searchText = (textField.text ?? "") + string
        LocationManager.shared.findLocation(with: searchText) { [weak self] result in
            switch result {
            case .success(let locations):
                self?.locations = locations
            case .failure(let error):
                print("Error fetching locations: \(error)")
            }
        }
        return true
    }
    
}
