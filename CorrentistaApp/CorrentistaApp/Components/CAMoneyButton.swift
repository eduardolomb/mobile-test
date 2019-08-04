//
//  CAMoneyButton.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation
import UIKit

class CAMoneyButton: UIButton {
    
    var value: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
   
    func setup() {
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 5
        self.backgroundColor = UIColor.white
        self.setTitle("+\(value)", for: .normal)
        self.layer.borderColor = UIColor.black.cgColor
    }
    
}
