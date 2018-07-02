//
//  MessengerTest.swift
//  Angelos_projTests
//
//  Created by Dione Twinkle Estabillo on 27/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
import Alamofire
import Quick
import Nimble
@testable import Angelos_proj

class MessengerTest: XCTestCase {
    
    let messenger = Messenger()
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testHasAccountSID() {
        let result = messenger.accountSID
        let testKey = "AC8206e0751f9153124ba52132eeb775f8"
        XCTAssertEqual(result, testKey)
    }
    
    func testHasAuthKey() {
        let result = messenger.auth
        let testAuth = "aa5b353dbfeb13c707f1bc7d7e65bcdd"
        XCTAssertEqual(result, testAuth)
    }

    func testSendMessageFunctionIsCalled() {
        let mockAlamo = MockAlamo()
        messenger.sendMessage(phoneNumber: "123", alamo: mockAlamo, type:"standard", userName: "Dione")
        XCTAssertEqual(mockAlamo.counter, 1)
    }
    
    func testBodyIsArray() {
        let messages = ["PLZ SEND HELP NOW -", "Call the Police -", "You have been listed as my emergency contact -"]
        expect(self.messenger.messages).to(equal(messages))
    }
    
    func testBodyOfPoliceMessage () {
        let policeBody = "Call the Police -"
        expect(self.messenger.messages[1]).to(equal(policeBody))
    }
    
    func testBodyOfInformMessage () {
        let informBody = "You have been listed as my emergency contact -"
        expect(self.messenger.messages[2]).to(equal(informBody))
    }
    
    func testSendCustomMessageCallsSendRequest () {
        let mockAlamo = MockAlamo()
        messenger.sendCustomMessage(phoneNumber: "456", alamo: mockAlamo, userName: "Charly", customMessage: "This is a custom message")
        XCTAssertEqual(mockAlamo.counter, 1)
    }
    
    func testAddedAsEmergencyContactMessageSends() {
        let mockAlamo = MockAlamo()
        messenger.sendMessage(phoneNumber: "123", alamo: mockAlamo, type:"inform", userName: "Dione")
        XCTAssertEqual(mockAlamo.counter, 1)
    }

}
