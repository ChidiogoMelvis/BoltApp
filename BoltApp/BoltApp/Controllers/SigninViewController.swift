//
//  SignupViewController.swift
//  BoltApp
//
//  Created by Mac on 11/08/2023.
//

import UIKit

class SigninViewController: UIViewController {
    
    let emailTextField = TextField(placeholder: "email", isSecureTextEntry: false)
    let passwordTextField = TextField(placeholder: "password", isSecureTextEntry: true)
    
    let signupButton = Button(image: UIImage(named: ""), label: "Signin", btnColor: .white, backgroundColor: #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Signup"
        setupViews()
        view.backgroundColor = .white
    }
    
    func setupViews() {
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(signupButton)
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            emailTextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48),
            
            signupButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupButton.widthAnchor.constraint(equalToConstant: 200),
            signupButton.heightAnchor.constraint(equalToConstant: 48)
        ])
    }
}
