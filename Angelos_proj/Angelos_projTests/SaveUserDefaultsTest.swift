//
//  SaveUserDefaultsTest.swift
//  Angelos_projTests
//
//  Created by Charly Mannion on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//


import XCTest
@testable import Angelos_proj

class SaveUserDefaultsTest: XCTestCase {
    
    var mockUserDef = MockUserDef()
    var subject = SaveUserDefaults(defaultlib: MockUserDef())
    
    override func setUp() {
        super.setUp()
        subject = SaveUserDefaults(defaultlib: mockUserDef)
    }

    func testHasDefaultProperty() {
        XCTAssertNotNil(subject.defaults)
    }
    
    func testSetNameCallsSetValue() {
        subject.setName(name: "Muzzi")
        XCTAssertEqual(mockUserDef.setValueCalled, true)
    }
    
    func testSetNameCallsSetValueWithName() {
        subject.setName(name: "Muzzi")
        XCTAssertEqual(mockUserDef.setValueFirstParamter, "Muzzi")
    }

    func testSetNameCallsSetValueWithKey() {
        subject.setName(name: "Muzzi")
        XCTAssertEqual(mockUserDef.setValueSecondParamter, "nameKey")
    }
    
    func testGetNameCallsGetValue() {
        XCTAssertEqual(subject.getName(), "getValue was called with nameKey")
    }
    
    func testGetNumberOneCallsGetValue() {
        XCTAssertEqual(subject.getNumber1(), "getValue was called with numberKey")
    }
    
    func testGetNumberTwoCallsGetValue() {
        XCTAssertEqual(subject.getNumber2(), "getValue was called with numberKey2")
    }
    
    func testGetNumberThreeCallsGetValue() {
        XCTAssertEqual(subject.getNumber3(), "getValue was called with numberKey3")
    }
    
    func testSetCustomMessageCallsSetValueWithMessage() {
        subject.setCustomMessage(customMessage: "This is a custom message -")
        XCTAssertEqual(mockUserDef.setValueFirstParamter, "This is a custom message -")
    }
    
    func testSetCustomMessageCallsSetValueWithKey() {
        subject.setCustomMessage(customMessage: "This is a custom message -")
        XCTAssertEqual(mockUserDef.setValueSecondParamter, "customMessageKey")
    }
    
    func testGetCustomMessageCallsGetValue() {
        XCTAssertEqual(subject.getCustomMessage(), "getValue was called with customMessageKey")
    }
 
}
