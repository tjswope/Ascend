//
//  AscendExtensions.swift
//  Ascend
//
//  Created by Swope, Thomas on 12/14/18.
//  Copyright © 2018 Swope, Thomas. All rights reserved.
//

import Foundation
import UIKit

extension UIButton{
    
    
    
    func setUpButton(){
        self.layer.borderWidth = 1
        layer.masksToBounds = false
        self.backgroundColor = Colors.grey.value.withAlphaComponent(0.2)
        layer.borderColor = Colors.orange.value.cgColor
        layer.cornerRadius = 20
        setTitleColor(Colors.orange.value, for: .normal)
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        clipsToBounds = true
    }
}

extension UIView {
    func setBackGroundColor(){
        backgroundColor = Colors.blue.value
    }
}
