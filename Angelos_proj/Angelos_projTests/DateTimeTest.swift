//
//  DateTimeTest.swift
//  Angelos_projTests
//
//  Created by Charly Mannion on 02/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
@testable import Angelos_proj

class DateTimeTest: XCTestCase {
    
    let dateTime = DateTime()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDateTime() {
        let currentDateTime = Date(timeIntervalSinceReferenceDate: 10)
        XCTAssertEqual("Message Sent 00:00 2001-01-01", dateTime.formatDate(currentDateTime: currentDateTime))
    }
    
}


