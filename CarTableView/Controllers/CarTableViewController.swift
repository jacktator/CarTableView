//
//  CarTableViewController.swift
//  CarTableView
//
//  Created by SongXujie on 23/4/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import UIKit

let SEGUE_TO_DETAIL = "segueToDetail"

class CarTableViewController: UIViewController {

    @IBOutlet weak var navbar: UINavigationItem!
    @IBOutlet weak var carTableView: UITableView!
    
    let CELL_IDENTIFIER = "carCell";
    
    let carArray = [
        Car(name: "AE86", year: 1986),
        Car(name: "Tesla", year: 2000),
        Car(name: "Farrari", year: 2020),
        Car(name: "Williams", year: nil)
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        navbar.title = "Car Gallery"
        
    }
}

extension CarTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    /* TableView Deletgate Methods */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return carArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: CELL_IDENTIFIER, for: indexPath)
        
        // Retrieve Car Data
        let currentIndex = indexPath.row;
        let currentCar = carArray[currentIndex];
        
        // Display Data
        cell.textLabel?.text = currentCar.name
        cell.detailTextLabel?.text =
            (currentCar.year != nil) ? "Released \(currentCar.year!)" : "Unknow Year"
        
        return cell;
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

        // Retrieve Car Data
        let selectedIndex = indexPath.row;
        let selectedCar = carArray[selectedIndex];

        // Push to new ViewController?
        // By performing Segue
        print("CarTableViewController:   Navigating to CarDetailViewController")
        self.performSegue(withIdentifier: SEGUE_TO_DETAIL, sender: selectedCar)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Read/Get Data from Segue
        // Inject the Data into Destination (CarDetailViewController)
        print("CarTableViewController:  prepareForSegue(): \(segue.identifier ?? "")")
        if segue.identifier == SEGUE_TO_DETAIL {

            // Get Data
            let selectedCar = sender as? Car

            // Get Destination ViewController
            let detailVC = segue.destination as? CarDetailViewController
            detailVC?.car = selectedCar
        } else {
            print("CarTableViewController:  prepareForSegue(): Non-intended Segue. Typo?)")
        }
    }

}
