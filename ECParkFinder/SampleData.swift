//
//  SampleData.swift
//  ECParkFinder
//
//  Created by Eric VandenHeuvel on 9/27/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import Foundation

final class SampleData {
    
    static func generateParkData() -> [Park] {
        
        var parks = [
            Park(parkName: "Phoenix Park", distance: "4.8", lat: 44.811348, long: -91.498497),
            Park(parkName: "Owen", distance: "1.2", lat: 45.811348, long: -90.498497),
            Park(parkName: "Mt. Simon", distance: "2.6", lat: 43.811348, long: -92.498497)
        ]
        
       parks.sort {
            ($0.distance, $0.parkName) <
                ($1.distance, $1.parkName)
        }
        
        return parks
            
    }
}
