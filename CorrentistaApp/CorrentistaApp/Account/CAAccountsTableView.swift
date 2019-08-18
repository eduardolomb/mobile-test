//
//  AccountsTable.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit

class CAAccountsTableView: UIView {

    @IBOutlet var contentView: UIView?
    var rowsAmount: Int = 2

    @IBOutlet weak var uiAccountsTableView: UITableView!
    
    
    var selectedCell:CAAccountTableViewCell?{
        willSet{
            selectedCell?.accessoryType = .none
            newValue?.accessoryType = .checkmark
        }
    }
    
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
        self.registerCell()
        uiAccountsTableView.estimatedRowHeight = 83
    }
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: "CAAccountsTableView", bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }

}

extension CAAccountsTableView: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = self.uiAccountsTableView.cellForRow(at: indexPath) as? CAAccountTableViewCell {
        selectedCell = cell
            
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowsAmount
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CAAccountTableViewCell") as? CAAccountTableViewCell {
            return cell

        }
        

        return UITableViewCell()
    }
    
    func registerCell() {
        let accountCell = UINib(nibName: "CAAccountTableViewCell", bundle: nil)
        self.uiAccountsTableView.register(accountCell, forCellReuseIdentifier: "CAAccountTableViewCell")
    }
    
}
