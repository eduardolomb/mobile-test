//
//  StringExtensions.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation

extension String {
    
    mutating func addCurrency () {

        let formatter = NumberFormatter()
        let value = formatter.number(from: self)
        formatter.locale = Locale.current
        formatter.numberStyle = .currency
        if let unpackedValue = value {
            if let formattedAmount = formatter.string(from: unpackedValue) {
                self = "\(formattedAmount)"
            }
        }
    }
    
}
