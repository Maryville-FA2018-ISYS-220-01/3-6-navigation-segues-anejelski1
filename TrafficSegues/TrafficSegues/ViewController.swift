//
//  ViewController.swift
//  TrafficSegues
//
//  Created by Gross, Paul on 10/30/17.
//  Copyright © 2017 Maryville App Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segueSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }


    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func yellowB(_ sender: Any) {
        if segueSwitch.isOn {
            performSegue(withIdentifier: "yellow", sender: nil)
        }
    }
    
    @IBAction func greenB(_ sender: Any) {        if segueSwitch.isOn {
        performSegue(withIdentifier: "green", sender: nil)
        }
    }
    
    
}

