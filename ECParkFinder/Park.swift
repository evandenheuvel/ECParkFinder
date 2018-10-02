//
//  Park.swift
//  ECParkFinder
//
//  Created by Eric VandenHeuvel on 9/27/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import Foundation
import CoreLocation

struct Park {
    // MARK: - Properties
    var parkName: String
    var lat: Double
    var long: Double
    
    func getDistance(currentLocation: CLLocation) -> Double {
        
        let parkLocation = CLLocation(latitude: self.lat, longitude: self.long)
        let distanceInMeters = currentLocation.distance(from: parkLocation)
        let distanceinMiles = distanceInMeters * 0.00062137
        
        return distanceinMiles
    }
}


