//
//  Extension+HomeScreenViewController.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension HomeScreenViewController {
    
    func setupButton() {
            view.addSubview(sideBarButton)
            NSLayoutConstraint.activate([
                sideBarButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
                sideBarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14)
            ])
        }
    
    @objc func dismissSidebar() {
        UIView.animate(withDuration: 0.3, animations: {
            self.customSidebar.frame.origin.x = CGFloat(-self.sidebarWidth)
            }) { (completed) in
                self.customSidebar.removeFromSuperview()
            }

            isSidebarVisible = false
    }

    
    @objc func showSidebarButtonTapped() {
        if !isSidebarVisible {
            customSidebar.frame = CGRect(x: -300, y: 0, width: 300, height: view.frame.height)
            view.addSubview(customSidebar)

            UIView.animate(withDuration: 0.3) {
                self.customSidebar.frame.origin.x = 0
            }

            isSidebarVisible = true
        }
        if let dismissControl = customSidebar.subviews.first(where: { $0 is DismissControl }) {
                   customSidebar.bringSubviewToFront(dismissControl)
               }
    }
    
}
