//
//  ViewController.swift
//  CarTableView
//
//  Created by SongXujie on 23/4/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var actionButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        welcomeLabel.text = "Welcome! Car App!"
    }

    @IBAction func onButtonClick(_ sender: Any) {
        print("WelcomeViewController:   Navigating to CarTableViewController")
    }
    
}

