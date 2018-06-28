//
//  SaveUserDefaultsTest.swift
//  Angelos_projTests
//
//  Created by Charly Mannion on 28/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest

import Quick
import Nimble

@testable import Angelos_proj

class SaveUserDefaultsTest: QuickSpec {
    override func spec() {
        let subject = SaveUserDefaults()
        
        describe("saving defaults") {
            context("saving the user info") {
                it("adds a number to the userInfo as a key value pair") {
                    subject.saveNumber(number: "+447794991234")
                    expect(subject.userInfo["numberKey"]).to(equal("+447794991234"))
                }
                it("has an attribute called defaults") {
                    expect(subject.defaults).to(equal(UserDefaults.standard))
                }
                it("sets the name attribute") {
                    subject.saveName(name: "Muzzi")
                    expect(subject.defaults.string(forKey: "nameKey")).to(equal("Muzzi"))
                }
            }
        }
    }
}
