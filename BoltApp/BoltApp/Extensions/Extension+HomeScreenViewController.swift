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
    
    @objc func showSidebarButtonTapped() {
        if !isSidebarVisible {
            sidebarView.frame = CGRect(x: -300, y: 0, width: 300, height: view.frame.height)
            view.addSubview(sidebarView)
            
            UIView.animate(withDuration: 0.3) {
                self.sidebarView.frame.origin.x = 0
            }
            
            isSidebarVisible = true
        } else {
            UIView.animate(withDuration: 0.3) {
                self.sidebarView.frame.origin.x = -300
            } completion: { _ in
                self.sidebarView.removeFromSuperview()
            }
            
            isSidebarVisible = false
        }
        
    }
    
}
