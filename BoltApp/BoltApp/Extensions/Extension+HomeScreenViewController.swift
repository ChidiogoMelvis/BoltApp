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
            sideBarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8)
        ])
    }
    
    @objc func setupDismissControl() {
        sideBarButton.addTarget(self, action: #selector(showSidebarButtonTapped), for: .touchUpInside)
        let topDismissControl = TopDismissControl()
        topDismissControl.addTarget(self, action: #selector(dismissSidebar), for: .touchUpInside)
        customSidebar.addSubview(topDismissControl)
        topDismissControl.frame = CGRect(x: 0, y: 0, width: customSidebar.frame.width, height: topViewHeight)
    }
    
    
    @objc func dismissSidebar(sender: UIControl) {
        if sender is TopDismissControl {
            UIView.animate(withDuration: 0.3) {
                self.customSidebar.frame.origin.x = -self.sidebarWidth
            } completion: { _ in
                self.customSidebar.removeFromSuperview()
            }
            isSidebarVisible = false
        }
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
        if let dismissControl = customSidebar.subviews.first(where: { $0 is TopDismissControl }) {
            customSidebar.bringSubviewToFront(dismissControl)
        }
    }
    
}
