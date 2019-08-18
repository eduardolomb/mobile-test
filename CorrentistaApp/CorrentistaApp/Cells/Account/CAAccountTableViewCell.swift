//
//  CAAccountTableViewCell.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit

class CAAccountTableViewCell: UITableViewCell {

    @IBOutlet weak var uiAccountName: UILabel?
    
    @IBOutlet weak var uiAccountValue: UILabel?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        //self.backgroundColor = UIColor.lightGray
        // Configure the view for the selected state
    }
    
}
