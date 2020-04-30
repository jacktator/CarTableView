//
//  CarDetailViewController.swift
//  CarTableView
//
//  Created by SongXujie on 30/4/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import UIKit

class CarDetailViewController: UIViewController {
    
    @IBOutlet weak var navbar: UINavigationItem!
    @IBOutlet weak var decriptionLabel: UILabel!
    
    var car: Car? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        print(car)
        if let title = car?.name {
            navbar.title = title
        } else {
            navbar.title = "Unknown Car"
        }
        
        if let year = car?.year {
            decriptionLabel.text = "An amazing car built in \(year)."
        } else {
            decriptionLabel.text = "It is an amazing car, when it's invented?"
        }
        
    }
    
}
