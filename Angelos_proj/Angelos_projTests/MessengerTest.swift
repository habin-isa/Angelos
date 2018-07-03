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
    let mockAlamo = MockAlamo()
    
    override func setUp() {
        super.setUp()
        messenger.sendMessage(phoneNumber: "123", alamo: mockAlamo, type:"standard", userName: "Dione")
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasAccountSID() {
        let result = messenger.accountSID
        let testSID = EncryptedKeys().accountSID
        XCTAssertEqual(result, testSID)
    }
    
    func testHasAuthKey() {
        let result = messenger.auth
        let testAuth = EncryptedKeys().authKey
        XCTAssertEqual(result, testAuth)
    }

    func testSendMessageFunctionIsCalled() {
        XCTAssertEqual(mockAlamo.requestFunctionCalled, true)
    }
    
    func testAlamoRequestCalledWithCorrectUrl() {
        XCTAssertEqual(mockAlamo.urlCalledWith, "https://api.twilio.com/2010-04-01/Accounts/\(EncryptedKeys().accountSID)/Messages")
    }
    
    func testAlamoRequestCalledWithCorrectSID() {
        XCTAssertEqual(mockAlamo.sidCalledWith, EncryptedKeys().accountSID)
    }
    
    func testAlamoRequestCalledWithCorrectAuthKey() {
        XCTAssertEqual(mockAlamo.authCalledWith, EncryptedKeys().authKey)
    }
    
    func testBodyIsArray() {
        let messages = ["PLZ SEND HELP NOW -", "Call the Police -", "You have been listed as my emergency contact -"]
        expect(self.messenger.messages).to(equal(messages))
    }
    
    func testBodyOfPoliceMessage() {
        let policeBody = "Call the Police -"
        expect(self.messenger.messages[1]).to(equal(policeBody))
    }
    
    func testBodyOfInformMessage() {
        let informBody = "You have been listed as my emergency contact -"
        expect(self.messenger.messages[2]).to(equal(informBody))
    }
    
    func testBodyOfCustomMessage() {
        let customBody = "This is a custom message -"
        self.messenger.sendCustomMessage(phoneNumber: "123", userName: "Charly", customMessage: customBody)
        expect(self.messenger.messageCustomMessage).to(equal(customBody))
    }
    
    func testSendCustomMessageCallsSendRequest() {
        let mockAlamo = MockAlamo()
        messenger.sendCustomMessage(phoneNumber: "456", alamo: mockAlamo, userName: "Charly", customMessage: "This is a custom message")
        XCTAssertEqual(mockAlamo.requestFunctionCalled, true)
    }

}
