//
//  CAContactView.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 03/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import UIKit

class CAContactView: UIView {

    @IBOutlet weak var uiImageView: UIImageView!
    
    @IBOutlet weak var uiName: UILabel!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    func setup() {
        self.uiImageView.roundImage()
    }
    
}
