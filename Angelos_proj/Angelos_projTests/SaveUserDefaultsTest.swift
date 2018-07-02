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
        
        describe("SaveUserDefaults") {
            
            describe("Default property") {
                it("has an attribute called defaults") {
                    expect(subject.defaults).to(equal(UserDefaults.standard))
                }
            }
            describe("#setName") {
                it("sets the name attribute") {
                    subject.setName(name: "Muzzi")
                    expect(subject.defaults.string(forKey: "nameKey")).to(equal("Muzzi"))
                }
            }
            describe("#setNumber") {
                it("sets the number attribute") {
                    subject.setNumber(number: "+447794991234")
                    expect(subject.defaults.string(forKey: "numberKey")).to(equal("+447794991234"))
                }
            }
            describe("#setName2") {
                it("sets the name attribute") {
                    subject.setName2(name: "Muzzi")
                    expect(subject.defaults.string(forKey: "nameKey2")).to(equal("Muzzi"))
                }
            }
            describe("#setNumber2") {
                it("sets the number attribute") {
                    subject.setNumber2(number: "+447794991234")
                    expect(subject.defaults.string(forKey: "numberKey2")).to(equal("+447794991234"))
                }
            }
            describe("#getName") {
                it("returns the name attribute") {
                    subject.setName(name: "Muzzi")
                    expect(subject.getName()).to(equal("Muzzi"))
                }
            }
            describe("#getNumber") {
                it("returns the number attribute") {
                    subject.setNumber(number: "+447794991234")
                    expect(subject.getNumber()).to(equal("+447794991234"))
                }
            }
            describe("#getName2") {
                it("returns the name attribute") {
                    subject.setName2(name: "Muzzi")
                    expect(subject.getName2()).to(equal("Muzzi"))
                }
            }
            describe("#getNumber2") {
                it("returns the number attribute") {
                    subject.setNumber2(number: "+447794991234")
                    expect(subject.getNumber2()).to(equal("+447794991234"))
                }
            }
            
        }
    }
}
