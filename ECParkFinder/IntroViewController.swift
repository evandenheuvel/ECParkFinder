//
//  IntroViewController.swift
//  ECParkFinder
//
//  Created by Marx, Matt on 10/4/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import UIKit
import CoreLocation

class IntroViewController: UIViewController {
    
    let locationmanager = CLLocationManager()
    let mapViewController = MapViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        mapViewController.locationStuff()

        // Do any additional setup after loading the view.
    }


}
