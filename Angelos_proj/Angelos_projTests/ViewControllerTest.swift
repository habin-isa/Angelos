//
//  ViewControllerTest.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 01/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
@testable import Angelos_proj

class ViewControllerTest: XCTestCase {
    
    var viewControllerUnderTest: ViewController!
    
    override func setUp() {
        super.setUp()
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        self.viewControllerUnderTest = storyboard.instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        self.viewControllerUnderTest.loadView()
        self.viewControllerUnderTest.viewDidLoad()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func viewControllerUnderTestIsComposedOfButton() {
        XCTAssertNotNil(self.viewControllerUnderTest.clickSos, "Does not have a button")
    }

    
}
