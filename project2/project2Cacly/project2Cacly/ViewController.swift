//
//  ViewController.swift
//  project2Cacly
//
//  Created by Aaron Goldbin on 10/13/18.
//  Copyright © 2018 Aaron Goldbin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    var calcInput = ""
    var currentString = ""
//    var calcConvert = 0.0
    var currentNumber = 0.0
    var previousNumber = 0.0
    var symbol = ""
    let toggle = "+/-"
    let modulo = "%"
    let operators = ["+", "-", "/", "*"]
//    var allInput: [Any] = []
//    var lastOperator = ""
//    TODO make initalizer

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        totalLabel.text = ""
        totalLabel.text = "Hello world"
    }

    @IBAction func symbolTouched(_ sender: UIButton) {
            // Check if previous button was also an operator
            
            // Check if operator is first thing typed
            // Check if ... something...
            //        if ()
//        if value1 == nil {
//            value1 = Double(currentString)!
//        } else {
//            calcInput = "\(value1)\(currentString)"
//            value1 = Double(calcInput)!
//        }

        if let title = sender.currentTitle {
                print(title)
//                if value1 == 0.0 {
//                    value1 =
                    previousNumber = 0.0
//                    currentString = ""
//                }
            switch title {
            case "Clear":
                currentString = ""
                totalLabel.text = ""
                break
            case "+/-":
                toggleValue()
                break
            case "-":
                if (currentString.suffix(3) == toggle) {
                    toggleValue()
                } else {
                    currentString = currentString.dropLast() + title
                }
                break
            case "=":
                calcInput = "\(currentNumber)\(currentString)"
//                value2 = Double(currentString)
                symbol = String(currentString.prefix(1))
                print(symbol)
                currentString = String(currentString.dropFirst())
                print(currentString)
//                calcConvert = Double(calcInput)!
                print("calc input: \(calcInput)")
                print("value: \(currentNumber)")
                print("string: \(currentString)")
                break
//            case (totalLabel.text == ""):
//                print("Symbol can't be first thing typed")
//                break
            default:
                currentString = ""
                currentString = currentString + title
//                print("Err in switch")
                break
            }

//                print("Cannot have 2 operators in a row. Replacing operator.")

            totalLabel.text = currentString
        }
    }
    
    @IBAction func numberTouched(_ sender: UIButton) {
//        TODO get switch statement working
//        TODO append string with button touched
//        TODO convert string to double
        if let title = sender.currentTitle {
            print(title)
            // Check if current number already contains decimal
            if (sender.currentTitle == "." && currentString.contains(".")) {
                print("Number may only contain 1 decimal")
            } else {
                currentString = currentString + title
                print(currentString)
                try? previousNumber = Double(currentString)!
                
//                value2 = Double(currentString)!
                totalLabel.text = currentString
            }
        
        }
    }
    
    
    func toggleValue() {
        print()
        previousNumber = previousNumber * -1
//        currentString = currentString * -1
        currentString = String(previousNumber)
    }
    

    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
