//
//  SaveUserDefaults.swift
//  Angelos_proj
//
//  Created by Charly Mannion on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class SaveUserDefaults {
    
    var defaults:UserDef
    
    init(defaultlib:UserDef = UserDef()) {
        defaults = defaultlib
    }
    
    func setName(name: String) {
        defaults.setValue(value: name, key: "nameKey")
    }
    
    func setNumber(number: String) {
        if isNumberOneEmpty() { defaults.setValue(value: number, key: "numberKey") }
        if isNumberTwoEmpty() { defaults.setValue(value: number, key: "numberKey2") }
        if isNumberThreeEmpty() { defaults.setValue(value: number, key: "numberKey3") }
    }
    
    func isNumberOneEmpty() -> Bool {
        return defaults.getValue(key: "numberKey") == nil
    }
    
    func isNumberTwoEmpty() -> Bool {
        return defaults.getValue(key: "numberKey2") == nil
    }

    func isNumberThreeEmpty() -> Bool {
        return defaults.getValue(key: "numberKey3") == nil
    }


    func getName() -> String {
        return defaults.getValue(key: "nameKey")!
    }
    
    func getNumber1() -> String {
        return defaults.getValue(key: "numberKey")!
    }

    func getNumber2() -> String {
        return defaults.getValue(key: "numberKey2")!
    }
    
    func getNumber3() -> String {
        return defaults.getValue(key: "numberKey3")!
    }
    
    func setCustomMessage(customMessage: String) {
        defaults.setValue(value: customMessage, key: "customMessageKey")
    }
    
    func getCustomMessage() -> String {
        return defaults.getValue(key: "customMessageKey")!
    }

}
