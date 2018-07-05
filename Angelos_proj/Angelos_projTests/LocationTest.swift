//
//  LocationTest.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
import CoreLocation

@testable import Angelos_proj

class LocationTest: XCTestCase {
    
    let subject = Location()
    
    override func setUp() {
        super.setUp()
    }
    
    func testReturnLinkReturnsLinkWithCoordinates() {
        subject.locationManager = MockCoreLoc()
        XCTAssertEqual(subject.returnLink(), "http://maps.apple.com/?ll=1.23,4.56")
    }
    
}
