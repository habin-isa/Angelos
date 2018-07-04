//
//  MockUserDef.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 04/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
@testable import Angelos_proj

class MockUserDef: UserDef {
    
    var setValueCalled = false
    var getValueCalled = false
    var setValueFirstParamter:String? = nil
    var setValueSecondParamter:String? = nil
    var getValueFirstParamter:String? = nil 
    
    override func setValue(value: String, key: String) {
        setValueCalled = true
        setValueFirstParamter = value
        setValueSecondParamter = key
    }
    
    override func getValue(key: String) -> String {
        return "getValue was called with \(key)"
    }
    
}

