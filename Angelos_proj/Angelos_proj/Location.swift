//
//  Location.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

class Location {
    
    var locationManager = CoreLoc()
    
    func returnLink() -> String {
        let latitude = locationManager.latitude()
        let longitude = locationManager.longitude()
        return "http://maps.apple.com/?ll=\(latitude),\(longitude)"
    }
    
}
