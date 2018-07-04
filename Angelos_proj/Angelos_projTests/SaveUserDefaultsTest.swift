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
    
    let subject = SaveUserDefaults()
    let messenger = Messenger()
    let mockAlamo = MockAlamo()
    
    override func setUp() {
        super.setUp()
    }

    func testHasDefaultProperty() {
        XCTAssertEqual(subject.defaults, UserDefaults.standard)
    }
    
    func testSetName() {
        subject.setName(name: "Muzzi")
        XCTAssertEqual(subject.defaults.string(forKey: "nameKey"), "Muzzi")
    }
    
    func testSetNumber() {
        subject.setNumber(number: "+447794991234")
        XCTAssertEqual(subject.defaults.string(forKey: "numberKey"), "+447794991234")
    }

    func testSetNumber2() {
        subject.setNumber(number: "+447718950558")
        XCTAssertEqual(subject.defaults.string(forKey: "numberKey2"), "+447718950558")
    }
    
    func testSetNumber3() {
        subject.setNumber(number: "+447718978668")
        XCTAssertEqual(subject.defaults.string(forKey: "numberKey3"), "+447718978668")
    }
    
    func testGetName() {
        subject.setName(name: "Muzzi")
        XCTAssertEqual(subject.getName(), "Muzzi")
    }
    
    func testGetNameNil() {
        subject.defaults.set(nil, forKey: "nameKey")
        XCTAssertEqual(subject.getName(), "Not nil")
    }
    
    func testGetNumber() {
        subject.setNumber(number: "+447794991234")
        XCTAssertEqual(subject.getNumber1(), "+447794991234")
    }
    
    func testGetNilNumber() {
        subject.defaults.set(nil, forKey: "numberKey")
        XCTAssertEqual(subject.getNumber1(), "Not nil")
    }
    
    func testSetCustomMessage() {
        subject.setCustomMessage(customMessage: "This is a custom message -")
        XCTAssertEqual(subject.defaults.string(forKey: "customMessageKey"), "This is a custom message -")
    }
    
    func testGetCustomMessage() {
        subject.setCustomMessage(customMessage: "This is a custom message -")
        XCTAssertEqual(subject.getCustomMessage(), "This is a custom message -")
    }
    
    func testCustomMessageNil() {
        subject.defaults.set(nil, forKey: "customMessageKey")
        XCTAssertEqual(subject.getCustomMessage(), "Not nil")
    }
    
    

//            describe("#getNumber2") {
//                it("returns the number attribute") {
//                    subject.setNumber2(number: "+447718950558")
//                    expect(subject.getNumber2()).to(equal("+447718950558"))
//                }
//                it("returns nil") {
//                    subject.defaults.set(nil, forKey: "numberKey2")
//                    expect(subject.getNumber2()).to(equal("Not nil"))
//                }
//            }
//            describe("#getNumber3") {
//                it("returns the number attribute") {
//                    subject.setNumber3(number: "+447718978668")
//                    expect(subject.getNumber3()).to(equal("+447718978668"))
//                }
//                it("returns nil") {
//                    subject.defaults.set(nil, forKey: "numberKey3")
//                    expect(subject.getNumber3()).to(equal("Not nil"))
//                }
//            }
//            describe("#setCustomMessage") {
//                it("sets the custom message attribute") {
//                    subject.setCustomMessage(customMessage: "This is a custom message -")
//                    expect(subject.defaults.string(forKey: "customMessageKey")).to(equal("This is a custom message -"))
//                }
//            }
//            describe("#getCustomMessage") {
//                it("returns the custom message attribute") {
//                    subject.setCustomMessage(customMessage: "This is a custom message -")
//                    expect(subject.getCustomMessage()).to(equal("This is a custom message -"))
//                }
//                it("returns nil") {
//                    subject.defaults.set(nil, forKey: "customMessageKey")
//                    expect(subject.getCustomMessage()).to(equal("Not nil"))
//                }
//            }
//        }
 
}
