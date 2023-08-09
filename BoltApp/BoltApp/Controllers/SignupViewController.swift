//
//  SignupSigninViewController.swift
//  BoltApp
//
//  Created by Mac on 09/08/2023.
//

import UIKit

class SignupViewController: UIViewController {
    
    lazy var emailTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "email"
        return textfield
        
    }()
    
    lazy var passwordTextField: UITextField = {
        let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.placeholder = "password"
        return textfield
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
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
