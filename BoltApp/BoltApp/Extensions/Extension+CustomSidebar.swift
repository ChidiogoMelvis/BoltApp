//
//  Extension+CustomSidebar.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension CustomSidebar {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SidebarCell", for: indexPath) as! SidebarCell
        cell.profileImage.image = UIImage(systemName: "person.crop.circle")
        cell.profileName.text = "Emelano"
        cell.viewProfileLabel.text = "View profile"
        cell.viewProfileLabel.font = UIFont.systemFont(ofSize: 12)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
//    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return "Emenalo"
//    }

    
    
}
