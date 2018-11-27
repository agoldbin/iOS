//
//  GroupTwoViewController.swift
//  Protocols
//
//  Created by Aaron Goldbin on 11/4/18.
//

import UIKit

class GroupTwoViewController: UIViewController, dataPackage {
    var receivedName: String? = nil
    
    @IBOutlet weak var lblReceivedName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        if let name = receivedName {
            lblReceivedName.text = name
        }
    }
}
