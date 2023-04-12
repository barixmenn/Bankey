//
//  Decimal.swift
//  Bankey
//
//  Created by Baris on 13.04.2023.
//

import UIKit

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
