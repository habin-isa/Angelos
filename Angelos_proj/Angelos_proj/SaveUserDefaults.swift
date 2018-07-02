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
        if let name = defaults.string(forKey: "nameKey") {
            return name
        } else {
            return("Not nil")
        }
    }
    
    func getNumber1() -> String {
         if let number = defaults.string(forKey: "numberKey") {
            return number
        } else {
            return("Not nil")
        }
    }

    func getNumber2() -> String {
        if let number = defaults.string(forKey: "numberKey2") {
            return number
        } else {
            return("Not nil")
        }
    }
    
    func getNumber3() -> String {
        if let number = defaults.string(forKey: "numberKey3") {
            return number
        } else {
            return("Not nil")
        }
    }
    
    func setCustomMessage(customMessage: String) {
        defaults.setValue(customMessage, forKey: "customMessageKey")
    }
    
    func getCustomMessage() -> String {
        if let customMessage = defaults.string(forKey: "customMessageKey") {
            return customMessage
        } else {
            return("Not nil")
        }
    }

}
