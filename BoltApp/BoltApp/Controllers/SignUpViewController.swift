//
//  SignUpViewController.swift
//  BoltApp
//
//  Created by Mac on 07/10/2022.
//

import UIKit

class SignUpViewController: UIViewController, UITextFieldDelegate {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter your number"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 23, weight: .medium)
        
        return label
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "We will send a code to verify your mobile number"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .light)
        
        return label
    }()
    
    lazy var phoneNumberTextField: UITextField = {
        let textField = UITextField()
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: textField.frame.height))
        textField.leftViewMode = .always
        textField.delegate = self
        textField.returnKeyType = .continue
        textField.keyboardType = .numberPad
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.layer.borderWidth = 2
        textField.layer.borderColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
        textField.layer.cornerRadius = 5
        textField.placeholder = "Phone number"
        textField.addTarget(self,
                            action: #selector(self.textFieldFilter), for: .editingChanged)
        
        return textField
    }()
    
    lazy var loginWithFacebookLabel: UILabel = {
        let label = UILabel()
        label.text = "Log in with facebook"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        
        return label
    }()
    
    lazy var continueBtn: UIButton = {
        var button = UIButton()
        button.setTitle("CONTINUE", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
        button.layer.cornerRadius = 30
        button.addTarget(self, action: #selector(tapButtonVc), for: .touchUpInside)
        
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        // Do any additional setup after loading the view.
    }
    
    override func canPerformAction(
        _ action: Selector, withSender sender: Any?) -> Bool {
          return super.canPerformAction(action, withSender: sender)
          && (action == #selector(UIResponderStandardEditActions.cut)
          || action == #selector(UIResponderStandardEditActions.copy))
      }
    
    @objc func tapButtonVc() {
        let vc = VerifyCodeViewController()
        vc.modalPresentationStyle = .fullScreen
        self.present(vc, animated: true)
    }
    
    @objc private func textFieldFilter(_ textField: UITextField) {
      if let text = textField.text, let intText = Int(text) {
        textField.text = "\(intText)"
      } else {
        textField.text = ""
      }
    }
    
    func textField(_ textField: UITextField,
      shouldChangeCharactersIn range: NSRange,
      replacementString string: String) -> Bool {
      let invalidCharacters =
        CharacterSet(charactersIn: "0123456789").inverted
      return (string.rangeOfCharacter(from: invalidCharacters) == nil)
    }

    
    func setupViews(){
        let subViews = [titleLabel, subTitleLabel, phoneNumberTextField, loginWithFacebookLabel, continueBtn]
        for subView in subViews {
            view.addSubview(subView)
        }
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 120),
            
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 13),
            
            phoneNumberTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            phoneNumberTextField.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 13),
            phoneNumberTextField.heightAnchor.constraint(equalToConstant: 54),
            phoneNumberTextField.widthAnchor.constraint(equalToConstant: 337),
            
            loginWithFacebookLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            loginWithFacebookLabel.topAnchor.constraint(equalTo: phoneNumberTextField.bottomAnchor, constant: 200),
            
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            continueBtn.topAnchor.constraint(equalTo: loginWithFacebookLabel.bottomAnchor, constant: 13),
            continueBtn.heightAnchor.constraint(equalToConstant: 55),
            continueBtn.widthAnchor.constraint(equalToConstant: 337)
        ])
    }
}
