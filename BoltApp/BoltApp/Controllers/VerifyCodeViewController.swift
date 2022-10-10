//
//  VerifyCodeViewController.swift
//  BoltApp
//
//  Created by Mac on 07/10/2022.
//

import UIKit

class VerifyCodeViewController: UIViewController, UITextFieldDelegate {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Enter code"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 23, weight: .medium)
        
        return label
    }()
    
    lazy var subTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "An SMS code was sent to \n"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .gray
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        return label
    }()
    
    lazy var editLabel: UILabel = {
        let label = UILabel()
        label.text = "Edit phone number"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0.2039215686, green: 0.8196078431, blue: 0.5254901961, alpha: 1)
        label.font = UIFont.systemFont(ofSize: 16, weight: .regular)
        
        return label
    }()
    
    lazy var firstCodeTextField: CustomTextField = {
        let textField = CustomTextField(title: "")
        textField.addTarget(self,
            action: #selector(self.textFieldFilter), for: .editingChanged)
        return textField
    }()
    
    lazy var secondCodeTextField: CustomTextField = {
        let textField = CustomTextField(title: "")
        textField.addTarget(self,
            action: #selector(self.textFieldFilter), for: .editingChanged)
        return textField
    }()
    
    lazy var thirdCodeTextField: CustomTextField = {
        let textField = CustomTextField(title: "")
        textField.addTarget(self,
            action: #selector(self.textFieldFilter), for: .editingChanged)
        return textField
    }()
    
    lazy var fourthCodeTextField: CustomTextField = {
        let textField = CustomTextField(title: "")
        textField.addTarget(self,
            action: #selector(self.textFieldFilter), for: .editingChanged)
        return textField
    }()
    
    lazy var stackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [firstCodeTextField, secondCodeTextField, thirdCodeTextField, fourthCodeTextField])
        stackView.axis = .horizontal
        stackView.distribution = .equalSpacing
        stackView.spacing = 5
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
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
        setUpViews()
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
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
    
    @objc func tapButtonVc() {
        let vc = HomeScreenViewController()
        let nav = UINavigationController(rootViewController: vc)
        nav.modalPresentationStyle = .fullScreen
        self.present(nav, animated: true)
    }
  
    func setUpViews() {
        let subViews = [titleLabel, subTitleLabel, editLabel, stackView, continueBtn]
        for subView in subViews {
            view.addSubview(subView)
        }
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 38),
            
            subTitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 5),
            subTitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 38),
            
            editLabel.topAnchor.constraint(equalTo: subTitleLabel.bottomAnchor, constant: 15),
            editLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 38),
            
            stackView.topAnchor.constraint(equalTo: editLabel.bottomAnchor, constant: 8),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 38),
            stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -38),
            stackView.heightAnchor.constraint(equalToConstant: 70),
            stackView.widthAnchor.constraint(equalToConstant: 100),
            
            continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 36),
            continueBtn.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 300),
            continueBtn.heightAnchor.constraint(equalToConstant: 55),
            continueBtn.widthAnchor.constraint(equalToConstant: 337)
        ])
    }

}
