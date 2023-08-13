//
//  Extension+HomeViewController.swift
//  BoltApp
//
//  Created by Mac on 09/10/2022.
//

import Foundation
import UIKit
import MapKit

extension ResultLocationViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return locations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! Cell
        cell.textLabel?.text = locations[indexPath.row].name
        cell.contentView.backgroundColor = .secondarySystemBackground
        cell.backgroundColor = .secondarySystemBackground
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let selectedLocation = locations[indexPath.row]
        delegate?.searchViewController(self, didSelectLocation: selectedLocation)
    }
    
}
