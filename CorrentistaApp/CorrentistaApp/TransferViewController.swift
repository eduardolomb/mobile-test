//
//  TransferViewController.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 18/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit

class TransferViewController: UIViewController, Storyboarded {
    
    var selectedContact = ""
    var coordinator: ContactsTransferCoordinator?
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
//        coordinator?.makeTransfer(to: "")
    }
}
