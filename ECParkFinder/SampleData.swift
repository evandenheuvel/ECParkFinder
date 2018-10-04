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
            Park(parkName: "Phoenix Park", distance: 0, lat: 44.8130, long: -91.5042),
            Park(parkName: "Owen", distance: 0, lat: 44.8051, long: -91.4995),
            Park(parkName: "Mt. Simon", distance: 0, lat: 44.8304, long: -91.5025)
        ]
        
       
        
        return parks
            
    }
}
