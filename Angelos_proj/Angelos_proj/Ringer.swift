//
//  Ringer.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation
import AVFoundation


class Ringer {
    
    var playTime = 10.0

    
    func play(ringtonePlayer:AudioPlayer, time:Double) {
        DispatchQueue.main.asyncAfter(deadline: .now() + time, execute: {
            ringtonePlayer.play()
            self.stop(ringtonePlayer: ringtonePlayer)
        })
    }
    
    func stop(ringtonePlayer:AudioPlayer) {
        DispatchQueue.main.asyncAfter(deadline: .now() + playTime, execute: {
            ringtonePlayer.stop()
        })
    }
    
}
