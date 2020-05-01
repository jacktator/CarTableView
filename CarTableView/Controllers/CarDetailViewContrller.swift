//
//  CarDetailViewContrller.swift
//  CarTableView
//
//  Created by SongXujie on 1/5/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    // Connect View => ViewController
    @IBOutlet weak var navbar: UINavigationItem!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    // var to store Car Data
    var car: Car? = nil
    
    // When page loads
    override func viewDidLoad() {
        
        // Display that data
        displayCarData()
    }
    
    func displayCarData() {
        // Diplay Car Name
        if let name = car?.name {
            navbar.title = name
        } else {
            print("CarDetailViewContrller:  viewDidLoad() car variable is empty")
            navbar.title = "Unknow Car"
        }
        
        // Display Car Description
        if let year = car?.year {
            descriptionLabel.text = "Built in \(year)"
        } else {
            descriptionLabel.text = "Unknown year"
        }
    }
    
}
