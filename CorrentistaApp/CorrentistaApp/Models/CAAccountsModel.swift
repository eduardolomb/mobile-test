//
//  CAAccountsModel.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 04/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation

struct CAAccountsModel: Decodable {
    let data: [CAAccountModel]
    
    init(from decoder: Decoder) throws {
        var container = try decoder.unkeyedContainer()
        data = [try container.decode(CAAccountModel.self)]
    }
}
