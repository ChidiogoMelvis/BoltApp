//
//  Extension+HomeScreenViewController.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension HomeScreenViewController {
    
//    func setupButton() {
//        view.addSubview(sideBarButton)
//        NSLayoutConstraint.activate([
//            sideBarButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
//            sideBarButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 8)
//        ])
//    }
//
//    func setupDismissControl() {
//            sideBarButton.addTarget(self, action: #selector(showSidebarButtonTapped), for: .touchUpInside)
//            let topDismissControl = TopDismissControl()
//            topDismissControl.addTarget(self, action: #selector(dismissSidebar), for: .touchUpInside)
//            customSidebar.addSubview(topDismissControl)
//            topDismissControl.frame = CGRect(x: 0, y: 0, width: customSidebar.frame.width, height: topViewHeight)
//        }
//
//
//        @objc func dismissSidebar(sender: UIControl) {
//            if sender is TopDismissControl {
//                UIView.animate(withDuration: 0.3) {
//                    self.customSidebar.frame.origin.x = -self.sidebarWidth
//                } completion: { _ in
//                    self.customSidebar.removeFromSuperview()
//                }
//                isSidebarVisible = false
//            }
//        }
//
//        @objc func showSidebarButtonTapped() {
//            if !isSidebarVisible {
//                customSidebar.frame = CGRect(x: -300, y: 0, width: 300, height: view.frame.height)
//                view.addSubview(customSidebar)
//
//                UIView.animate(withDuration: 0.3) {
//                    self.customSidebar.frame.origin.x = 0
//                }
//
//                isSidebarVisible = true
//            }
//            if let dismissControl = customSidebar.subviews.first(where: { $0 is TopDismissControl }) {
//                customSidebar.bringSubviewToFront(dismissControl)
//            }
//        }
    
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
