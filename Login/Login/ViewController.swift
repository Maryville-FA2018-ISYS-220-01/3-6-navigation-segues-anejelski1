//
//  ViewController.swift
//  Login
//
//  Created by Gross, Paul on 10/30/17.
//  Copyright © 2017 Maryville App Development. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    
        guard let sender = sender as? UIButton else {return}
        if sender == FPbutton{
            segue.destination.navigationItem.title = "forgot password"
            
        } else if sender == FUbutton {
            segue.destination.navigationItem.title = "forgot username"
        } else{    segue.destination.navigationItem.title = usernameBox.text
            
        }
    }

    @IBOutlet weak var usernameBox: UITextField!
    
    @IBOutlet weak var FUbutton: UIButton!
    @IBAction func FUbutton(_ sender: Any) {
    performSegue(withIdentifier: "VCsegue", sender: FUbutton)
    }
    
    
    @IBOutlet weak var FPbutton: UIButton!
    @IBAction func FPbutton(_ sender: Any) {
    performSegue(withIdentifier: "VCsegue", sender: FPbutton)
    }
    
    
    
}

