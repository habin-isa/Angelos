//
//  LocationTest.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
import Quick
import Nimble
import CoreLocation

@testable import Pods_Angelos_proj
@testable import Angelos_proj

class LocationTest: QuickSpec, CLLocationManagerDelegate {
    
    override func spec() {
        
        let subject = Location()
        
        describe("Location") {
            
            describe("Returns location variable with longitude and latitude values") {
                it("returns the location variable") {
                    let mockCoreLoc = MockCoreLoc()
                    expect(subject.returnLink(locationManager: mockCoreLoc)).to(equal("http://maps.apple.com/?ll=1.23,4.56"))
                }
            }
        }
        
    }
    
}
