//
//  ViewController.swift
//  project2Cacly
//
//  Created by Aaron Goldbin on 10/13/18.
//  Copyright © 2018 Aaron Goldbin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentString = ""
    var currentNumber: Double = 0.0
    var previousNumber: Double = 0.0
    var symbol: Int = 0
    let toggle = "+/-"
    var performMath = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        totalLabel.text = "Hello world"
    }

    @IBAction func symbolTouched(_ sender: UIButton) {
        let title = sender.tag
        currentString = ""
//        previousNumber = currentNumber
        print("debug 2: \(previousNumber)")
//        currentNumber = 0
        switch title {
            case 11:
            // clear
                totalLabel.text = ""
//                currentString = ""
//                totalLabel.text = ""
                break
            case 12:
            // *
                totalLabel.text = "x"
//                totalLabel.text = "x"
//                symbol = 12
                break
            case 13:
            // /
                totalLabel.text = "/"
//                symbol = 13
                break
            case 14:
            // -
                totalLabel.text = "-"
                break
            case 15:
            // +
                totalLabel.text = "+"
                break
            case 16:
            // =
//                currentString = String(currentString.dropFirst())
                print("value: \(currentNumber)")
//                print("string: \(currentString)")
                performMath = true
                performOperation()
                break
            case 17:
            // %
                totalLabel.text = "%"
                break
            case 18:
            // +/-
                currentNumber = toggleValue(currentNumber: currentNumber)
                return
            default:
                totalLabel.text = ""
                print("Err in switch")
                break
        }
        
        symbol = title
        performMath = true
        if performMath {
            performOperation()
        }
        currentNumber = 0
//        totalLabel.text = currentString
    }
    
    func performOperation() {
        print(symbol)
        switch symbol {
        case 12:
            previousNumber *= currentNumber
            break
        case 13:
            previousNumber /= currentNumber
            print("\(previousNumber) / \(currentNumber)")
            break
        case 14:
            previousNumber -= currentNumber
            break
        case 15:
            previousNumber += currentNumber
            break
        case 17:
//            previousNumber = previousNumber % currentNumber
            break
        default:
            print("Err performing operation")
        }
        print(previousNumber)
        currentNumber = 0
        totalLabel.text = String(previousNumber)
        performMath = false
    }
    
//    }
    
    @IBAction func numberTouched(_ sender: UIButton) {
        if let title = sender.currentTitle {
            print("debug 1: \(title)")
            if (sender.currentTitle == "." && (totalLabel.text?.contains("."))!) {
                print("Number may only contain 1 decimal")
//            } else if (!(Double(currentNumber) != nil)) {
//                currentString += title
//                currentNumber = Double(totalLabel.text)
            // Check if current number already contains decimal
            
            } else {
                currentString += title
                currentNumber = Double(currentString)!
//                currentNumber = Double(currentString)!
//                currentString += title
            }
//            currentNumber = Double(totalLabel.text)
//            currentNumber = Double(currentString)!
            //                print(currentString)
            print("Cur num: \(currentNumber)")
//            totalLabel.text = String(currentNumber)
            totalLabel.text = currentString
        
        }
    }
    
    
    func toggleValue(currentNumber: Double) -> Double {
        print("debug 3: \(currentNumber)")
        let toggledNumber = currentNumber * -1
        print("Toggled num: \(toggledNumber)")
        totalLabel.text = String(toggledNumber)
//        previousNumber = previousNumber * -1
//        currentString = currentString * -1
//        currentString = String(previousNumber)
        return toggledNumber
    }
    

    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
