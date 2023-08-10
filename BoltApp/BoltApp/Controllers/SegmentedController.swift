//
//  SignupSigninViewController.swift
//  BoltApp
//
//  Created by Mac on 10/08/2023.
//

import UIKit

class SegmentedController: UIViewController {
    
    let seg = UISegmentedControl(items: ["Signup", "Signin"])
    
    var currentView: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupSegmentedControl()
                setupViews()
    }
   
    func setupSegmentedControl() {
           //seg.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        seg.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
           seg.translatesAutoresizingMaskIntoConstraints = false
       }
       
       func setupViews() {
           view.addSubview(seg)
           
           NSLayoutConstraint.activate([
               seg.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100),
               seg.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
               seg.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14)
           ])
       }

    
}
