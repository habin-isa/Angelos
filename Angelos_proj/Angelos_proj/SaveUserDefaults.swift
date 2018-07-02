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
    
    func setName2(name: String) {
        defaults.setValue(name, forKey: "nameKey2")
    }
    
    func setNumber2(number: String) {
        defaults.setValue(number, forKey: "numberKey2")
    }
    
    func setName3(name: String) {
        defaults.setValue(name, forKey: "nameKey3")
    }
    
    func setNumber3(number: String) {
        defaults.setValue(number, forKey: "numberKey3")
    }
    
    func getName() -> String {
        return defaults.string(forKey: "nameKey")!
    }
    func getNumber() -> String {
        return defaults.string(forKey: "numberKey")!
    }
    
    func getName2() -> String {
        return defaults.string(forKey: "nameKey2")!
    }
    func getNumber2() -> String {
        return defaults.string(forKey: "numberKey2")!
    }
    
    func getName3() -> String {
        return defaults.string(forKey: "nameKey3")!
    }
    func getNumber3() -> String {
        return defaults.string(forKey: "numberKey3")!
    }
}
