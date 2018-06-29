//
//  CoreLoc.swift
//  Angelos_proj
//
//  Created by Muzzi Aldean on 29/06/2018.
//  Copyright © 2018 Habin Kim. All rights reserved.
//

import Foundation

import CoreLocation

class CoreLoc: UIViewController <CLLocationManagerDelegate> {
    
    let locationManager = CLLocationManager()
    
    func latitude() -> Double {
        return locationManager.location!.coordinate.latitude
    }
    
    func longitude() -> Double {
        return locationManager.location!.coordinate.longitude
    }
    
//    func setup() {
//        locationManager.delegate = self
//        locationManager.desiredAccuracy = kCLLocationAccuracyBest
//        locationManager.requestWhenInUseAuthorization()
//        locationManager.startUpdatingLocation()
//    }
    
}
