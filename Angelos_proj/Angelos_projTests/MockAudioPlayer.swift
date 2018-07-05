//
//  MockAudioPlayer.swift
//  Angelos_projTests
//
//  Created by Muzzi Aldean on 03/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

@testable import Angelos_proj

class MockAudioPlayer: AudioPlayer {
    
    var playWasCalled = false
    var stopWasCalled = false
    
    override func play() {
        playWasCalled = true
    }
    
    override func stop() {
        stopWasCalled = true
    }
    
}
