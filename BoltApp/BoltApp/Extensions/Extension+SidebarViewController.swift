//
//  Extension+CustomSidebar.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension SidebarViewController {
    
    func setupViews() {
        view.addSubview(toggleBackBtn)
        view.addSubview(sidebarCollectionView)
        toggleBackBtn.addTarget(self, action: #selector(toggleBackButtonTapped), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            toggleBackBtn.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
            toggleBackBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            
            sidebarCollectionView.topAnchor.constraint(equalTo: toggleBackBtn.topAnchor, constant: 70),
            sidebarCollectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            sidebarCollectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            sidebarCollectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
        ])
    }
    
    @objc func toggleBackButtonTapped() {
        delegate?.sidebarDidToggleBack()
    }


    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tableData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SidebarCollectionViewCell", for: indexPath) as! SidebarCollectionViewCell
        let item = tableData[indexPath.item]
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
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
}
