//
//  RingerTest.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 03/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import XCTest
@testable import Angelos_proj

class RingerTest: XCTestCase {
    
    let ringer = Ringer()
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testHasPlayTimeAttribute() {
        XCTAssertEqual(ringer.playTime, 10.0)
    }
    
    func testAudioPlayersPlayFunctionWasCalled() {
        let mockAudioPlayer = MockAudioPlayer()
        ringer.playTime = 0.0
        ringer.play(ringtonePlayer: mockAudioPlayer, time: 0.0)
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            XCTAssertEqual(mockAudioPlayer.playWasCalled, true)
        })
    }
    
}
