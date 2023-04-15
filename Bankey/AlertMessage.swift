//
//  AlertMessage.swift
//  Bankey
//
//  Created by Baris on 15.04.2023.
//

import Foundation
import UIKit
    
extension UIViewController {
     func alertMessageShow(title : String,message : String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(ok)
        present(alert, animated: true)
    }
}
