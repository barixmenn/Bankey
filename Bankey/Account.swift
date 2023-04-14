//
//  Account.swift
//  Bankey
//
//  Created by Baris on 14.04.2023.
//

import Foundation

enum AccountType: String, Codable {
    case Banking
    case CreditCard
    case Investment
}

struct Account: Codable {
    let id: String
    let type: AccountType
    let name: String
    let amount: Decimal
    let createdDateTime: Date
}
