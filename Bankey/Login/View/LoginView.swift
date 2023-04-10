//
//  LoginView.swift
//  Bankey
//
//  Created by Baris on 11.04.2023.
//

import Foundation
import UIKit

class LoginView: UIView {

//MARK: - UI Element
    let stackView = UIStackView()
    let usernameTextField = UITextField()
    let passwordTextField = UITextField()
    let dividerView = UIView()
   
//MARK: - Lifecycle
    override init(frame: CGRect) {
           super.init(frame: frame)
           style()
           layout()
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
      
    
}

//MARK: - Functions
extension LoginView {
    
    private func style() {
        backgroundColor = .secondarySystemBackground
        translatesAutoresizingMaskIntoConstraints = false
        usernameTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        usernameTextField.placeholder = "Username"
        usernameTextField.delegate = self
        
        passwordTextField.placeholder = "Password"
        passwordTextField.isSecureTextEntry = true
        passwordTextField.delegate = self
        
        dividerView.translatesAutoresizingMaskIntoConstraints = false
        dividerView.backgroundColor = .secondarySystemFill
        
        stackView.axis = .vertical
        stackView.spacing = 8
        
        layer.cornerRadius = 5
        clipsToBounds = true
        
    }
    
    private func layout() {
        addSubview(stackView)
        stackView.addArrangedSubview(usernameTextField)
        stackView.addArrangedSubview(dividerView)
        stackView.addArrangedSubview(passwordTextField)
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalToSystemSpacingBelow: topAnchor, multiplier: 1),
            stackView.leadingAnchor.constraint(equalToSystemSpacingAfter: leadingAnchor, multiplier: 1),
            trailingAnchor.constraint(equalToSystemSpacingAfter: stackView.trailingAnchor, multiplier: 1),
            bottomAnchor.constraint(equalToSystemSpacingBelow: stackView.bottomAnchor, multiplier: 1)
        ])
        
        dividerView.heightAnchor.constraint(equalToConstant: 1).isActive = true
    }
}



//MARK: - UITextField Sources
extension LoginView: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        usernameTextField.endEditing(true)
        passwordTextField.endEditing(true)
        return true
    }
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
       return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
}
