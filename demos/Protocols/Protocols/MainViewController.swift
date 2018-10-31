//
//  MainViewController.swift
//  Protocols
//
//  Created by Witkowski, Bryan E on 10/23/18.
//  Copyright © 2018 Witkowski, Bryan E. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var nameField: UITextField!
    
    @IBOutlet weak var emailField: UITextField!
    
    @IBOutlet weak var phoneField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let name = nameField.text,
            let email = emailField.text,
            let phone = phoneField.text {
            let person = Person(name: name, email: email, phone: phone)
            var dest = segue.destination as! dataProtocol
            dest.data = person
        }
    }
 
    @IBAction func userDetailsTouched(_ sender: UIButton) {
        if let name = nameField.text {
            let id = name < "M" ? "groupOneSegue" : "groupTwoSegue"
            performSegue(withIdentifier: id, sender: nil)
            /*
            if name <= "L" {
                performSegue(withIdentifier: "groupOneSegue", sender: nil)
            } else {
                performSegue(withIdentifier: "groupTwoSegue", sender: nil)
            }
            */
        }
        
    }
}
