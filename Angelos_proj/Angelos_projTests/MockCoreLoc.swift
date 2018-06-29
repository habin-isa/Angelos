//
//  MockCoreLoc.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

@testable import Angelos_proj

class MockCoreLoc: CoreLoc {
    
    override func latitude() -> Double {
        return 1.23
    }
    
    override func longitude() -> Double {
        return 4.56
    }
    
}
