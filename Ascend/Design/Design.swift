//
//  Design.swift
//  Ascend
//
//  Created by Swope, Thomas on 12/11/18.
//  Copyright © 2018 Swope, Thomas. All rights reserved.
//

import Foundation
import UIKit

enum Colors{
    case blue
    case yellow
    case tangerine
    case orange
    case grey
    case white
    case darkGrey
}

extension Colors{
    var value: UIColor{
        get {
            switch self {
            case .blue:
                return UIColor(red:0.62, green:0.96, blue:0.95, alpha:1.0)
            case .yellow:
                return UIColor(red:0.94, green:1.00, blue:0.67, alpha:1.0)
            case .tangerine:
                return UIColor(red:0.99, green:0.82, blue:0.25, alpha:1.0)
            case .orange:
                return UIColor(red:0.98, green:0.61, blue:0.23, alpha:1.0)
            case .grey:
                return UIColor(red:0.55, green:0.58, blue:0.58, alpha:1.0)
            case .white:
                return UIColor.white
            case .darkGrey:
                return UIColor(red:0.32, green:0.31, blue:0.32, alpha:1.0)
            }
        }
    }
}


enum Fonts{
    case big
    case medium
    case small
}

extension Fonts{
    var value: UIFont{
        get {
            switch self {
            case .big:
                return UIFont(name: "Helvetica Neue", size: CGFloat(20))!
            case .medium:
                return UIFont(name: "Helvetica Neue", size: CGFloat(16))!
            case .small:
                return UIFont(name: "Helvetica Neue", size: CGFloat(12))!
            }
        }
    }
}


