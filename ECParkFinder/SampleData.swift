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
            Park(parkName: "Mt. Simon", distance: 0, lat: 44.8304, long: -91.5025),
            Park(parkName: "Riverview", distance: 0, lat: 44.8448426, long: -91.4976476),
            Park(parkName: "Boyd Park", distance: 0, lat: 44.8128794, long: -91.4858251),
            Park(parkName: "Wilson Park", distance: 0, lat: 44.8069502, long: -91.4951558),
            Park(parkName: "Demmler Park", distance: 0, lat: 44.8032285, long: -91.4873711),
            Park(parkName: "Putnam Park", distance: 0, lat: 44.7946296, long: -91.4922758),
            Park(parkName: "Randall Park", distance: 0, lat: 44.8045705, long: -91.5068737),
            Park(parkName: "Carson Park", distance: 0, lat: 44.8079224, long: -91.5221794),
            Park(parkName: "Rod and Gun Park", distance: 0, lat: 44.8062123, long: -91.5299816)
        ]
        
       
        
        return parks
            
    }
}
