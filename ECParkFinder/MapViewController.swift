//
//  MapViewController.swift
//  ECParkFinder
//
//  Created by Jesse Wilson on 10/2/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController {


    @IBOutlet weak var mapView: MKMapView!
    
    let locationmanager = CLLocationManager()
    var location = [Int:Double]()
    let regionRadius: CLLocationDistance = 1000
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationStuff()
        self.mapView.showsUserLocation = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        findLocation()
    }
    
    func locationStuff() {
        locationmanager.delegate = self
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.requestLocation()
        
    }
    
    func findLocation(){
        
        let currentLocation = CLLocation(latitude: location[1]!, longitude: location[2]!)
        centerMapOnLocation(location: currentLocation)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius, regionRadius)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    
    //MARK: - Matts app had 'Get location' ours is get directions, change logic here
    @IBAction func getLocation(_ sender: Any) {
        locationmanager.requestLocation()
        findLocation()
    }
}

extension MapViewController: CLLocationManagerDelegate {
    
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
