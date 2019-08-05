//
//  CAAccountsWorker.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 04/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation
class CAAccountsWorker {

    func getJSON() {
    
    let url = Bundle.main.url(forResource: "newStops", withExtension: "json")!

do {
    let data = try Data(contentsOf: url)
    let root = try JSONDecoder().decode(CAAccountsModel.self, from: data)
    for account in root.data {
        print(account.accountType)
    }
}
catch {
    print("Error occured during Parsing", error)
}

}

}
