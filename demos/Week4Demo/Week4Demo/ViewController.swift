//
//  ViewController.swift
//  Week4Demo
//
//  Created by Witkowski, Bryan E on 9/25/18.
//  Copyright © 2018 Witkowski, Bryan E. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numbers: [Int] = [0, 1, 2, 3, 4]
        let anotherSetOfNumbers: [Int] =  [10, 20, 30, 40]
        var students = [Int: String]()
        students[0] = "joe"
        students[1] = "sue"
        students[2] = "dave"
        
        var numberSets = [String : [Int]]()
        numberSets["firstFiveNumbers"] = numbers
        numberSets["byTen"] = anotherSetOfNumbers
        
        
        
        
    }


    
    
}

