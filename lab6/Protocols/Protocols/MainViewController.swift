//
//  ViewController.swift
//  Protocols
//
/*
 
 On the first screen, place a UILabel (Name:), a UITextField (input for the name), and a button that directs the user to 1 of 2 different views. If the name starts with A-L, direct the user to a view (group1ViewController) that indicates GROUP 1 and also displays the name that the user entered. If the name starts with M-Z, direct the user to a view (group2ViewController) that indicates GROUP 2 and also displays the name that the user entered.
 
 You will need to create a protocol named dataPackage that has 1 get/set variable named data. group1ViewController and group2ViewController will implement the protocol and then populate a UILabel with the data entered on the first screen.
 
 In the prepareForSegue method, you will need to access the destination. The destination will either be group1ViewController or group2ViewController and they both implement the dataPackage protocol. Knowing this, you can use the code below to reference the destination as an instance of a dataPackage. This will allow you to pass along the data because your variable dest will have a variable called data based on the implementation of your protocol.
 
 var dest = segue.destination as! dataPackage
 
 
 */

import UIKit

var setLabel = false

class MainViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        lblName.text = ""
        print("debug")
        if (setLabel) {
            lblName.text = "Hi"
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let name = nameField.text {
//            lblName.text = name
            var dest = segue.destination as! dataPackage
            dest.receivedName = name
 
        }
    }
    

    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var nameField: UITextField!
    
    @IBAction func sendToGroup(_ sender: UIButton) {
        if let name = nameField.text {
            lblName.text = name
            let segueId = name < "M" ? "groupOne" : "groupTwo"
            performSegue(withIdentifier: segueId, sender: nil)
        }
    }
}
