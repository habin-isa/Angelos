//
//  SaveUserDefaults.swift
//  Angelos_proj
//
//  Created by Charly Mannion on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class SaveUserDefaults {
    var userInfo: [String: String] = [:]
    
    func saveName(name: String) {
        userInfo.updateValue(name, forKey: "nameKey")
    }
}
