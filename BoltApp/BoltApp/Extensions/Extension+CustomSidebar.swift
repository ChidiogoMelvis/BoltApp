//
//  Extension+CustomSidebar.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension CustomSidebar {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SidebarCell", for: indexPath) as! SidebarCell
        let item = tableData[indexPath.row]
           
           switch item.type {
           case .profileImage(let profileItem):
               cell.profileImage.image = profileItem.profileImage
               cell.profileName.text = profileItem.profileName
               cell.viewProfileLabel.text = profileItem.viewProfile
           case .journey(let journeyItem):
               cell.freeJourneysIcon.image = journeyItem.journeyIcon
               cell.freeJourneysLabel.text = journeyItem.journeyLabel
           case .payments(let paymentsItem):
               cell.paymentsIcon.image = paymentsItem.paymentsIcon
               cell.paymentsLabel.text = paymentsItem.paymentsLabel
           case .history(let historyItem):
               cell.historyIcon.image = historyItem.historyIcon
               cell.historyLabel.text = historyItem.historyLabel
           case .promotions(let promotionsItem):
               cell.promotionsIcon.image = promotionsItem.promotionsIcon
               cell.promotionsLabel.text = promotionsItem.promotionsLabel
           case .support(let supportItem):
               cell.supportIcon.image = supportItem.supportIcon
               cell.supportLabel.text = supportItem.supportLabel
           case .about(let aboutItem):
               cell.aboutIcon.image = aboutItem.aboutIcon
               cell.aboutLabel.text = aboutItem.aboutLabel
           case .workRides(let workRidesItem):
               cell.workRidesIcon.image = workRidesItem.workRidesIcon
               cell.workRidesLabel.text = workRidesItem.workRidesLabel
           }
           
           return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}
