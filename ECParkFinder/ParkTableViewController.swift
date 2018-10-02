//
//  ParkTableViewController.swift
//  ECParkFinder
//
//  Created by Eric VandenHeuvel on 9/25/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import UIKit
import CoreLocation
import MapKit

class ParkTableViewController: UITableViewController {
    
    var parks = SampleData.generateParkData()
    let locationmanager = CLLocationManager()
    let mapViewController = MapViewController()


    override func viewDidLoad() {
        super.viewDidLoad()
        mapViewController.locationStuff()
        
//        let currentLocation = CLLocation(latitude: <#T##CLLocationDegrees#>, longitude: <#T##CLLocationDegrees#>)
//        let parkLocation = CLLocation(latitude:, longitude: <#T##CLLocationDegrees#>)
        
       
    }
 
}


// MARK: - UITableViewDataSource
extension ParkTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return parks.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ParkCell", for: indexPath) as! ParkCell
        
        let park = parks[indexPath.row]
        
        cell.park = park
        return cell
    }
        
}
