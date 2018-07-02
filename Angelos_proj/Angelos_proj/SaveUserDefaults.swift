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
    
    func setNumber1(number: String) {
        defaults.setValue(number, forKey: "numberKey")
    }
    
    func setNumber2(number: String) {
        defaults.setValue(number, forKey: "numberKey2")
    }
    
    func setNumber3(number: String) {
        defaults.setValue(number, forKey: "numberKey3")
    }
    
    func getName() -> String {
        return defaults.string(forKey: "nameKey")!
    }
    func getNumber1() -> String {
        return defaults.string(forKey: "numberKey")!
    }

    func getNumber2() -> String {
        return defaults.string(forKey: "numberKey2")!
    }
    
    func getNumber3() -> String {
        return defaults.string(forKey: "numberKey3")!
    }

}
