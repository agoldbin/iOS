//
//  GroupOneViewController.swift
//  Protocols
//
//  Created by Witkowski, Bryan E on 10/23/18.
//  Copyright © 2018 Witkowski, Bryan E. All rights reserved.
//

import UIKit

class GroupOneViewController: UIViewController, dataProtocol {
    var data: Person? = nil
    
    @IBOutlet weak var personDetailsLabel: UILabel!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let person = data {
//            personDetailsLabel.text = person.email
            personDetailsLabel.text = person.description
        }

    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
