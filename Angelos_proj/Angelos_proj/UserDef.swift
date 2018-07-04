//
//  UserDef.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 04/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class UserDef {
    let defaults = UserDefaults.standard
    
    func setValue(value: String, key: String) {
        defaults.setValue(value, forKey: key)
    }
    
    func getValue(key: String) -> String? {
        if let value = defaults.string(forKey: key) {
            return value
        } else {
            return("Not nil")
        }
    }
}
