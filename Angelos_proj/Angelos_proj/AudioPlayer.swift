//
//  AudioPlayer.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 03/07/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import AVFoundation

class AudioPlayer {
    
    var player: AVAudioPlayer?
    
    init() {
        do {
            player = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: Bundle.main.path(forResource: "marimba.mp3", ofType: nil)!))
        } catch {
        }
    }
    
    func play() {
        player?.play()
    }
    
    func stop() {
        player?.stop()
    }
    
}
