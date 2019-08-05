//
//  AccountsTable.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit

class CAAccountsTable: UIView {

    
    @IBOutlet weak var uiAccountsTableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)

    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)

    }

}

extension CAAccountsTable: UITableViewDelegate {
    
}
