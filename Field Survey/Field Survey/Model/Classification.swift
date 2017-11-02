//
//  Classification.swift
//  Field Survey
//
//  Created by Shannon, Leandre D. (MU-Student) on 11/2/17.
//  Copyright © 2017 Shannon, Leandre D. (MU-Student). All rights reserved.
//

import UIKit

enum Classification: String {
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case plant
    case reptile
    
    var image: UIImage? {
        return UIImage(named: self.rawValue + "Icon")
    }
}
