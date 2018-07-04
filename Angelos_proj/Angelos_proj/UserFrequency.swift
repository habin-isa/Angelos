//
//  UserFrequency.swift
//  Angelos_proj
//
//  Created by Charly Mannion on 03/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class UserFrequency {
    let defaults = UserDefaults.standard
    var clickCounter = 1
    
//    var concernTriggered = false
    
    func click() {
        clickCounter += 1
        defaults.setValue(clickCounter, forKey: "userFrequencyKey")
    }
    
    
    func triggerConcern() -> Bool {
        if defaults.integer(forKey: "userFrequencyKey") % 10 == 0 { return true }
        else { return false }
    }
    
    func getUserFrequency() -> Int {
        return defaults.integer(forKey: "userFrequencyKey")
    }
    
}
