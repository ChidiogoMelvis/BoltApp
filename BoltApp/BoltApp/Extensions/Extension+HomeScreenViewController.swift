//
//  Extension+HomeScreenViewController.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension HomeScreenViewController {
    
    func setupViews() {
        view.addSubview(sideBarButton)
        sideBarButton.addTarget(self, action: #selector(toggleSidebar), for: .touchUpInside)
        NSLayoutConstraint.activate([
            sideBarButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            sideBarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14)
        ])
    }
    
    @objc func toggleSidebar() {
        if sidebarShowing {
            hideSidebar()
        } else {
            showSidebar()
        }
    }
    
    func showSidebar() {
            sidebarViewController = SidebarViewController()
        sidebarViewController.delegate = self
        addChild(sidebarViewController)
        view.addSubview(sidebarViewController.view)
            
        sidebarViewController.view.frame = CGRect(x: -sidebarWidth, y: 0, width: sidebarWidth, height: view.frame.height)
            
            UIView.animate(withDuration: 0.3) {
                self.sidebarViewController.view.frame = CGRect(x: 0, y: 0, width: self.sidebarWidth, height: self.view.frame.height)
            }
            
            sidebarShowing = true
        }
        
        func hideSidebar() {
            UIView.animate(withDuration: 0.3, animations: {
                self.sidebarViewController.view.frame = CGRect(x: -self.sidebarWidth, y: 0, width: self.sidebarWidth, height: self.view.frame.height)
            }) { (completed) in
                self.sidebarViewController.view.removeFromSuperview()
                self.sidebarViewController.removeFromParent()
                self.sidebarShowing = false
            }
        }
    
    func sidebarDidToggleBack() {
           hideSidebar()
       }
        
}
