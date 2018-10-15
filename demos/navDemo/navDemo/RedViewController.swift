//
//  RedViewController.swift
//  navDemo
//
//  Created by Aaron Goldbin on 10/9/18.
//  Copyright © 2018 Aaron Goldbin. All rights reserved.
//

import UIKit

class RedViewController: UIViewController {
    // class level variables should go here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var titleTextEntered: UITextField!
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = titleTextEntered.text
    }
    @IBOutlet weak var onOffSwitch: UISwitch!
    
    @IBAction func performSegueTouched(_ sender: UIButton) {
        onOffSwitch.isOn ? performSegue(withIdentifier: "OnSegue", sender: nil) : performSegue(withIdentifier: "OffSegue", sender: nil)
    }
    
}

