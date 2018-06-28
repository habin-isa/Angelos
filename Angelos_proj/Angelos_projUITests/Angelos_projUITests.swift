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
    
    func testInputNameAndNumber() {
        
        let app = XCUIApplication()
        let nameTextField = app.textFields["Name"]
        let numberTextField = app.textFields["Number"]
        nameTextField.tap()
        nameTextField.typeText("My Name")
        numberTextField.tap()
        numberTextField.typeText("1234567890")
        app.buttons["Submit"].tap()
        XCTAssertEqual(nameTextField.exists, true)
        XCTAssertEqual(numberTextField.exists, true)
    }
}
