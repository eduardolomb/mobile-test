//
//  CAAccountModel.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 04/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation

class CAAccountModel: Decodable {
    let accountType : String
    let accountValue : String
    
    required init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        accountType = try container.decode(String.self)
        accountValue = try container.decode(String.self)
    }
}
