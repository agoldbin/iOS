//
//  GroupOneViewController.swift
//  Protocols
//
//  Created by Aaron Goldbin on 11/4/18.
//

import UIKit

class GroupOneViewController: UIViewController, dataPackage {
    var receivedName: String? = nil
    var mainVC : MainViewController?    
    
    @IBOutlet weak var lblReceivedName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if let name = receivedName {
            lblReceivedName.text = name
        }
    }
}
