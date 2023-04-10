//
//  ViewController.swift
//  Bankey
//
//  Created by Baris on 10.04.2023.
//

import UIKit.UIViewController

class LoginViewController: UIViewController {
    
    //MARK: - UI Elements
    private let signInButton = UIButton(type: .system)
    private let errorMessageLabel = UILabel()
    
    //MARK: - Properties
    private let loginView = LoginView()
    
    private var username: String? {
        return loginView.usernameTextField.text
    }
    
    private var password : String? {
        return loginView.passwordTextField.text
    }
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    //MARK: - Functions
    
    //MARK: - Actions
    
}

//MARK: - Selector
extension LoginViewController {
    @objc private func singInTapped() {
        errorMessageLabel.isEnabled = false
        login()
        
    }
    
    private func login() {
        guard let username = username, let password = password else {
            assertionFailure("Username / password should never be nil")
            return
        }
        
        if username.isEmpty || password.isEmpty {
            configureView(withMessage: "Username / password cannot be blank")
            return
        }
        
        if username == "baris" && password == "12345" {
            signInButton.configuration?.showsActivityIndicator = true
        } else {
            configureView(withMessage: "Incorret username / password")
        }
    }
    
    private func configureView(withMessage message: String) {
        errorMessageLabel.isHidden = false
        errorMessageLabel.text = message
    }
}

//MARK: - Constraint
extension LoginViewController {
    private func style() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        errorMessageLabel.translatesAutoresizingMaskIntoConstraints = false
        
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
        signInButton.addTarget(self, action: #selector(singInTapped), for: .primaryActionTriggered)
        
        errorMessageLabel.textAlignment = .center
        errorMessageLabel.textColor = .systemRed
        errorMessageLabel.numberOfLines = 0
        errorMessageLabel.isHidden = true
    }
    
    
    private func layout() {
        view.addSubview(loginView)
        view.addSubview(signInButton)
        view.addSubview(errorMessageLabel)
        
        // Login View
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)
        ])
        
        // Button
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalToSystemSpacingBelow: loginView.bottomAnchor, multiplier: 2),
            signInButton.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            signInButton.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            
        ])
        
        // Error Message
        NSLayoutConstraint.activate([
            errorMessageLabel.topAnchor.constraint(equalToSystemSpacingBelow: signInButton.bottomAnchor, multiplier: 2),
            errorMessageLabel.leadingAnchor.constraint(equalTo: loginView.leadingAnchor),
            errorMessageLabel.trailingAnchor.constraint(equalTo: loginView.trailingAnchor),
            
        ])
    }
}


