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
    
    let signupButton = Button(image: UIImage(named: ""), label: "Continue", btnColor: .white, backgroundColor: #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1), radius: 30, imageColor: .clear)
    
    let createAccountButton = Button(image: UIImage(named: ""), label: "Create Account ?", btnColor: #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1), backgroundColor: .clear, radius: 0, imageColor: .clear)
    
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
        view.addSubview(createAccountButton)
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 150),
            emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            emailTextField.heightAnchor.constraint(equalToConstant: 48),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 14),
            passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -14),
            passwordTextField.heightAnchor.constraint(equalToConstant: 48),
            
            signupButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 200),
            signupButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            signupButton.widthAnchor.constraint(equalToConstant: 337),
            signupButton.heightAnchor.constraint(equalToConstant: 55),
            
            createAccountButton.topAnchor.constraint(equalTo: signupButton.bottomAnchor, constant: 50),
            createAccountButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40)
            
        ])
    }
}
