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
            describe("#setNumber1") {
                it("sets the number attribute") {
                    subject.setNumber1(number: "+447794991234")
                    expect(subject.defaults.string(forKey: "numberKey")).to(equal("+447794991234"))
                }
            }
            describe("#setNumber2") {
                it("sets the number attribute") {
                    subject.setNumber2(number: "+447718950558")
                    expect(subject.defaults.string(forKey: "numberKey2")).to(equal("+447718950558"))
                }
            }
            describe("#setNumber3") {
                it("sets the number attribute") {
                    subject.setNumber3(number: "+447718978668")
                    expect(subject.defaults.string(forKey: "numberKey3")).to(equal("+447718978668"))
                }
            }
            describe("#getName") {
                it("returns the name attribute") {
                    subject.setName(name: "Muzzi")
                    expect(subject.getName()).to(equal("Muzzi"))
                }
            }
            describe("#getNumber1") {
                it("returns the number attribute") {
                    subject.setNumber1(number: "+447794991234")
                    expect(subject.getNumber1()).to(equal("+447794991234"))
                }
            }
            describe("#getNumber2") {
                it("returns the number attribute") {
                    subject.setNumber2(number: "+447718950558")
                    expect(subject.getNumber2()).to(equal("+447718950558"))
                }
            }
            describe("#getNumber3") {
                it("returns the number attribute") {
                    subject.setNumber3(number: "+447718978668")
                    expect(subject.getNumber3()).to(equal("+447718978668"))
                }
            }
        }
    }
}
