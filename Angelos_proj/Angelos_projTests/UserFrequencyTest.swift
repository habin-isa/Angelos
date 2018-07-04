//
//  UserFrequencyTest.swift
//  Angelos_projTests
//
//  Created by Charly Mannion on 03/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
@testable import Angelos_proj

class UserFrequencyTest: XCTestCase {
    
    let userFrequency = UserFrequency()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testDefaultOfOneClick() {
        XCTAssertEqual(1, userFrequency.clickCounter)
    }
    
    func testClickCounter() {
        self.userFrequency.click()
        XCTAssertEqual(2, userFrequency.clickCounter)
    }
    
    func testConcernTriggeredDefault() {
        XCTAssertFalse(userFrequency.triggerConcern())
    }
    
    func testMultiplesOfTenTriggerConcern() {
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        userFrequency.click()
        XCTAssertTrue(userFrequency.triggerConcern())
    }
    
    func testUserFrequencyKeyIsSet() {
        userFrequency.click()
        userFrequency.click()
        XCTAssertEqual(3, userFrequency.getUserFrequency())
    }
    
    func testUserFrequencyKeyIs0() {
        userFrequency.defaults.set(nil, forKey: "userFrequencyKey")
        XCTAssertEqual(0, userFrequency.getUserFrequency())
    }
}
