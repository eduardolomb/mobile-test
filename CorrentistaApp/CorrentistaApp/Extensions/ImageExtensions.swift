//
//  ImageExtensions.swift
//  CorrentistaApp
//
//  Created by Eduardo Lombardi on 04/08/19.
//  Copyright © 2019 Eduardo Lombardi Ribeiro. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {

func roundImage() {
    self.layer.borderWidth = 1
    self.layer.masksToBounds = false
    self.layer.borderColor = UIColor.black.cgColor
    self.layer.cornerRadius = self.frame.height/2
    self.clipsToBounds = true
}

}
