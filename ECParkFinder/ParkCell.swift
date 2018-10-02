//
//  ParkCell.swift
//  ECParkFinder
//
//  Created by Eric VandenHeuvel on 9/27/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import UIKit
import CoreLocation

class ParkCell: UITableViewCell {
    

    
    // MARK: - IBOutlets:
    @IBOutlet weak var parkNameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    // MARK: - Properties:
    var park: Park? {
        didSet {
            guard let park = park else { return }
            
            let locationmanager = CLLocationManager()
            var location = [Int:Double]()
            
            parkNameLabel.text = park.parkName
            //TODO: - FIGURE THIS SHIT OuT
//            distanceLabel.text = "Distance: \(String(format:"%0.2f", arguments:park.getDistance(currentLocation: CLLocation(latitude: location[1]!, longitude: location[2]!)))) mi."
            
    
    }

}
