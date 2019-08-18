//
//  ViewController.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi Ribeiro on 01/08/2019.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit

class ContactsViewController: UIViewController, Storyboarded {
    
    @IBOutlet weak var uiAccountTableView: CAAccountsTableView!
    weak var coordinator: ContactsTransferCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
 
        //coordinator?.makeTransfer(to: "")
        
        self.title = NSLocalizedString("contacts_title", comment: "")
    }
    //didSelectRow vai chamar coordinator?.makeTransfer(to: "")

}

