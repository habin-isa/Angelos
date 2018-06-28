//
//  SaveUserDefaults.swift
//  Angelos_proj
//
//  Created by Charly Mannion on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class SaveUserDefaults {
    let defaults = UserDefaults.standard
    
    func saveName(name: String) {
        defaults.setValue(name, forKey: "nameKey")
    }
    
    func saveNumber(number: String) {
        defaults.setValue(number, forKey: "numberKey")
    }
}
