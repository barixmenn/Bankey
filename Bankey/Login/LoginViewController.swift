//
//  ViewController.swift
//  Bankey
//
//  Created by Baris on 10.04.2023.
//

import UIKit

class LoginViewController: UIViewController {

    //MARK: - UI Elements
    private let signInButton = UIButton(type: .system)
    
    //MARK: - Properties
    let loginView = LoginView()
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
    }
    
    //MARK: - Functions
    
    //MARK: - Actions

}

extension LoginViewController {
    private func style() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        signInButton.configuration = .filled()
        signInButton.configuration?.imagePadding = 8
        signInButton.setTitle("Sign In", for: [])
    }
        
        
        private func layout() {
            view.addSubview(loginView)
            view.addSubview(signInButton)
            
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
        }
    }
    

