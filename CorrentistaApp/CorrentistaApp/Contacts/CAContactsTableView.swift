//
//  CAContactsTableView.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit
import ContactsUI

class CAContactsTableView: UIView {

    @IBOutlet var contentView: UIView?
    let rowsAmount = 0
    var contactsArray: [CNContact] = []
    private var contactsNames: [String] = []
    
    @IBOutlet weak var uiTableView: UITableView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        print("initWithFrame")
        commomInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        print("initWithCoder")
        commomInit()
        
    }
    func commomInit() {
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
        uiTableView.estimatedRowHeight = 50
        setupContacts()
        setupNames()
        registerCell()
    }
    
    func setupContacts() {
        let contactsWorker = CAContactsWorker()
        contactsWorker.getSortedContacts()
        self.contactsArray = contactsWorker.contacts
    }
    
    func setupNames() {
        for contact in contactsArray {
            let fullName = contact.givenName + " " +  contact.familyName
            contactsNames.append(fullName)
        }
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CAContactsTableView", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

}
extension CAContactsTableView: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CAContactsTableViewCell") as? CAContactsTableViewCell {
            cell.textLabel?.text = contactsNames[indexPath.row]
            return cell
        }
        return UITableViewCell()
    }
    
    
    func registerCell() {
        let contactsCell = UINib(nibName: "CAContactsTableViewCell", bundle: nil)
        self.uiTableView.register(contactsCell, forCellReuseIdentifier: "CAContactsTableViewCell")
    }

}
