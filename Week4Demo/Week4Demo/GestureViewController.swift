//
//  GestureViewController.swift
//  Week4Demo
//
//  Created by Witkowski, Bryan E on 9/25/18.
//  Copyright © 2018 Witkowski, Bryan E. All rights reserved.
//

import UIKit
class GestureViewController: UIViewController {
    
    
    @IBAction func tappedScreen(_ sender: UITapGestureRecognizer) {
        
        let location = sender.location(in: view)
        print(location.x)
        
    }
    
    
}
