//
//  SignupViewController.swift
//  BoltApp
//
//  Created by Mac on 11/08/2023.
//

import UIKit

class SignupViewController: UIViewController {
    
    let emailTextField = TextField(placeholder: "email", isSecureTextEntry: false)
    let passwordTextField = TextField(placeholder: "password", isSecureTextEntry: true)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
    }
    
    func setupViews() {
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            emailTextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
