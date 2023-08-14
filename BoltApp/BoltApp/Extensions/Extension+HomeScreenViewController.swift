//
//  Extension+HomeScreenViewController.swift
//  BoltApp
//
//  Created by Mac on 14/08/2023.
//

import UIKit

extension HomeScreenViewController {
    
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
    
    @objc func handleTap(_ gestureRecognizer: UITapGestureRecognizer) {
            if isSidebarVisible {
                hideSidebar()
            }
        }
    
    func hideSidebar() {
            UIView.animate(withDuration: 0.3) {
                self.sidebarView.frame.origin.x = -300
            } completion: { _ in
                self.sidebarView.removeFromSuperview()
            }
            
            isSidebarVisible = false
        }
    
}
