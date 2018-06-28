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
    
    func setName(name: String) {
        defaults.setValue(name, forKey: "nameKey")
    }
    
    func setNumber(number: String) {
        defaults.setValue(number, forKey: "numberKey")
    }
    
    func getName() -> String {
        return defaults.string(forKey: "nameKey")!
    }
    func getNumber() -> String {
        return defaults.string(forKey: "numberKey")!
    }
}
