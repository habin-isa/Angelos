//
//  CoreLoc.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

import CoreLocation

class CoreLoc {
    
    func latitude() -> Double {
        return CLLocationManager().location!.coordinate.latitude
    }
    
    func longitude() -> Double {
        return CLLocationManager().location!.coordinate.longitude
    }
}
