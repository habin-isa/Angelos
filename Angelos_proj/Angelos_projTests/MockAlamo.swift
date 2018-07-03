//
//  MockAlamo.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import Alamofire
@testable import Angelos_proj

class MockAlamo: Alamo {
    
    var requestFunctionCalled = false
    var urlCalledWith = "none"
    var sidCalledWith = "none"
    var authCalledWith = "none"
    
    override func request(url:String, parameters:Parameters, accountSID:String, auth:String) -> Void {
        requestFunctionCalled = true
        urlCalledWith = url
        sidCalledWith = accountSID
        authCalledWith = auth
    }
}
