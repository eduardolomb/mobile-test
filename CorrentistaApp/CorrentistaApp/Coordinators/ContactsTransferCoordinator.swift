//
//  ContactsCoordinator.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 18/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation
import UIKit

class ContactsTransferCoordinator: Coordinator {
    
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    weak var parentCoordinator: MainCoordinator?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ContactsViewController.instantiate()
        navigationController.pushViewController(vc, animated: false)
    }
    
    func makeTransfer(to contact: String) {
            let vc = TransferViewController.instantiate()
            vc.selectedContact = contact
            vc.coordinator = self
            navigationController.pushViewController(vc, animated: true)
    }
}
