//
//  LoginView.swift
//  Bankey
//
//  Created by Baris on 11.04.2023.
//

import Foundation
import UIKit

class LoginView: UIView {
   
//MARK: - Lifecycle
    override init(frame: CGRect) {
           super.init(frame: frame)
           style()
           layout()
       }
       
       required init?(coder: NSCoder) {
           fatalError("init(coder:) has not been implemented")
       }
       
       override var intrinsicContentSize: CGSize {
           return CGSize(width: 200, height: 200)
       }
    
}

//MARK: - Functions
extension LoginView {
    
    private func style() {
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = .orange
    }
    
    private func layout() {
        
    }
}
