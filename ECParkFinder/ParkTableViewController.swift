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
    
    var parks = [Park]()
    let locationmanager = CLLocationManager()
    let mapViewController = MapViewController()
    var timer: Timer?
    var location = [Int:Double]()

    override func viewDidLoad() {
        super.viewDidLoad()
        locationmanager.delegate = self
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.requestLocation()
    }
    
    @IBAction func getLocationBtn1(_ sender: Any) {
        // button click to find the distance to the known parks
        parks = SampleData.generateParkData()
        var i = 0
        for var park in parks {
            
            park.distance = park.getDistance(currentLocation: CLLocation(latitude: location[1]!, longitude: location[2]!))
            parks[i].distance = park.distance
            i += 1
        }
        
        parks.sort {
            ($0.distance, $0.parkName) <
                ($1.distance, $1.parkName)
        }
        
        tableView.reloadData()
        
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "toMapSegue") {
            if let indexPath = tableView.indexPathForSelectedRow {
                let park = CLLocation(latitude: parks[indexPath.row].lat, longitude: parks[indexPath.row].long) 
                let destinationViewController = segue.destination as! MapViewController
                destinationViewController.park = park
            }
        }
    }
}

extension ParkTableViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])  {
        if let lat = locations.last?.coordinate.latitude, let long = locations.last?.coordinate.longitude {
            location = [1:lat, 2:long]
            print("Location: \(location)")
        } else {
            print ("No coordinates")
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
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




