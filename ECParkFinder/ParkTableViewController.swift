//
//  ParkTableViewController.swift
//  ECParkFinder
//
//  Created by Eric VandenHeuvel on 9/25/18.
//  Copyright © 2018 CVTC. All rights reserved.
//

import UIKit

class ParkTableViewController: UITableViewController {
    
    var parks = SampleData.generateParkData()
    

    override func viewDidLoad() {
        super.viewDidLoad()
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
