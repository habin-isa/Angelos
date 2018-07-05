//
//  Angelos_projUITests.swift
//  Angelos_projUITests
//
//  Created by Dione Twinkle Estabillo on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest

class Angelos_projUITests: XCTestCase {
        
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
//    func testTapAButton() {
//        XCUIApplication().buttons["SOS"].tap()
//    }
    
    

    
    func inputAllData () {
        
        let app = XCUIApplication()
        let nameTextField = app.textFields["Name"]
        let textFieldElementQuery = app.otherElements.containing(.staticText, identifier:"Your name")
        let numberTextField1 = textFieldElementQuery.children(matching: .textField).element(boundBy: 1)
        let numberTextField2 = app.textFields["Number"]
        let numberTextField3 = textFieldElementQuery.children(matching: .textField).element(boundBy: 3)
    
        nameTextField.tap()
        nameTextField.typeText("Muzzi")
        numberTextField1.tap()
        numberTextField1.typeText("1234567890")
        numberTextField2.tap()
        numberTextField2.typeText("2345678901")
        numberTextField3.tap()
        numberTextField3.typeText("3456789012")
        
    }
    
    func testInputNameAndNumber() {
        
        let app = XCUIApplication()
        let nameTextField = app.textFields["Name"]
        let textFieldElementQuery = app.otherElements.containing(.staticText, identifier:"Your name")
        let numberTextField1 = textFieldElementQuery.children(matching: .textField).element(boundBy: 1)
        let numberTextField2 = app.textFields["Number"]
        let numberTextField3 = textFieldElementQuery.children(matching: .textField).element(boundBy: 3)
        let submitButton = app.buttons["Submit"]
    
        inputAllData()

        XCTAssertEqual(nameTextField.exists, true)
        XCTAssertEqual(numberTextField1.exists, true)
        XCTAssertEqual(numberTextField2.exists, true)
        XCTAssertEqual(numberTextField3.exists, true)
        XCTAssertEqual(submitButton.exists, true)
        
    }
    
    func testGoesToDecoyPageSettingsButtonisVisible () {
        
        let app = XCUIApplication()
        let submitButton = app.buttons["Submit"]
        let settingsButton = app.buttons["Settings"]
        
        inputAllData()
        
        submitButton.tap()
        XCTAssertEqual(settingsButton.exists, true)

    }
    
    func testGoesToDecoyPageFakeCallButtonisVisible () {
        
        let app = XCUIApplication()
        let submitButton = app.buttons["Submit"]
        let fakeCallButton = app.buttons["Fake Call"]
        
        inputAllData()
        
        submitButton.tap()
        XCTAssertEqual(fakeCallButton.exists, true)
        
    }
    
    func testGoesToDecoyPagePoliceButtonisVisible () {
        
        let app = XCUIApplication()
        let submitButton = app.buttons["Submit"]
        let policeButton = app.buttons["POLICE"]
        
        inputAllData()
        
        submitButton.tap()
        XCTAssertEqual(policeButton.exists, true)
        
    }
    
    func test() {
        
//        app.buttons["SOS"].tap()
//        app.buttons["CUSTOM"].tap()
        
    }
}
