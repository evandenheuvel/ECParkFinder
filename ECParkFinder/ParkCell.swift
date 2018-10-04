//
//  ParkCell.swift
//  ECParkFinder
//
//  Created by Eric VandenHeuvel on 9/27/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import UIKit

class ParkCell: UITableViewCell {
    

    
    // MARK: - IBOutlets:
    @IBOutlet weak var parkNameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    
    // MARK: - Properties:
    var park: Park? {
        didSet {
            guard let park = park else { return }
            
            parkNameLabel.text = park.parkName
            distanceLabel.text = "Distance: \(String(format:"%0.2f", park.distance)) mi"
            
    
        }

    }
    
}
