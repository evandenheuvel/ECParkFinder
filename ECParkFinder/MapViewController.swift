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
    public var currentLocation = CLLocation()
    var park = CLLocation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        locationmanager.delegate = self
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.requestLocation()
        self.mapView.showsUserLocation = true
        
        // get location of park and set view radius around it
        let latitude: CLLocationDegrees = park.coordinate.latitude
        let longitude: CLLocationDegrees = park.coordinate.longitude
        let longDelta: CLLocationDegrees = 0.05
        let latDelta: CLLocationDegrees = 0.05
        let span: MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: longDelta)
        let location: CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
        let region: MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        
        mapView.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = location
        
        mapView.addAnnotation(annotation)
    }
    
    public func returnCurrentLocation() -> CLLocation{
        return CLLocation(latitude: location[1]!, longitude: location[2]!)
    }
}

extension MapViewController: CLLocationManagerDelegate {
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])  {
        if let lat = locations.last?.coordinate.latitude, let long = locations.last?.coordinate.longitude {
            location = [1:lat, 2:long]
        } else {
            print ("No coordinates")
        }
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }

}
