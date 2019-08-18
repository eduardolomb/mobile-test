//
//  CAContactsWorker.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation
import ContactsUI

class CAContactsWorker {
    let store = CNContactStore()
    var contacts = [CNContact]()
    var contactsNames = [String]()
    var letters = [Character]()
    
    func getSortedContacts() {
        let keys = [CNContactFormatter.descriptorForRequiredKeys(for: .fullName)]
        let request = CNContactFetchRequest(keysToFetch: keys)
            request.sortOrder = CNContactSortOrder.givenName
        do {
            try self.store.enumerateContacts(with: request) {
                (contact, stop) in
                let fullName = contact.givenName + contact.familyName
                self.contactsNames.append(fullName)
                self.contacts.append(contact)
            }
        }
        catch {
            print("unable to fetch contacts")
        }
    }
    
    func getSortedLetters() {

        for contact in contacts {
                letters.append(contact.givenName[contact.givenName.startIndex])

        }
        letters = letters.sorted()
    }
    
}
