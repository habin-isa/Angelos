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
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testDateTime() {
        let currentDateTime = Date(timeIntervalSinceReferenceDate: 10)
        XCTAssertEqual("Message Sent 00:00 2001-01-01", dateTime.formatDate(currentDateTime: currentDateTime))
    }
    
}


