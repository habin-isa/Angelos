//
//  MessengerTest.swift
//  Angelos_projTests
//
//  Created by Dione Twinkle Estabillo on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
@testable import Angelos_proj

class MessengerTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHasAccountSID() {
        let messenger = Messenger()
        let result = messenger.accountSID
        let testKey = "AC8206e0751f9153124ba52132eeb775f8"
        XCTAssertEqual(result, testKey)
    }
}
