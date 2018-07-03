//
//  UserFrequency.swift
//  Angelos_proj
//
//  Created by Charly Mannion on 03/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class UserFrequency {
    var clickCounter = 1
//    var concernTriggered = false
    
    func click() {
        clickCounter += 1
    }
    
    func triggerConcern() -> Bool {
        if clickCounter % 10 == 0 { return true }
        else { return false }
    }
    
}
