//
//  ViewController.swift
//  Navigation
//
//  Created by bryan witkowski on 10/7/18.
/*
- create 3 UIViewController classes
    * MathViewController
    * ScienceViewController
    * EnglishViewController
    
    
    - Put 3 view controllers onto your storyboard. Each view controller should correspond to one of the classes you created in step 1. Label each view as Math, Science, and English respectively.

    - Add a tab bar controller that allows the user to navigate to 3 different view controllers. Set each tab bar item to a different system item.

    - Within the MathViewController, add a Navigation controller that allows the user to sequence through ViewControllers for Calculus 1, Calculus 2, and Calculus 3

At the end of the lab, you should have a tab bar controller that takes you to math, science, and english. Within the math, you should have a sequence of Calculus courses that you can navigate through using a navigation controller. Each screen should be tied to a separate UIViewController class.
*/
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


}

