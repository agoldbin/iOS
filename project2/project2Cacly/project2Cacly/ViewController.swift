//
//  ViewController.swift
//  project2Cacly
//
//  Created by Aaron Goldbin on 10/13/18.
//  Copyright © 2018 Aaron Goldbin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var calcInput = ""
    var currentString = ""
    var calcConvert = 0.0
    var value1 = 0.0
    var value2 = 0.0
//    let addition    = "+"
//    let subtraction = "-"
//    let division    = "/"
//    let multiplication = "*"
    let toggle = "+/-"
    let modulo = "%"
    let operators = ["+", "-", "/", "*"]
    var allInput: [Any] = []
    var lastOperator = ""
//    TODO make initalizer
//    init?(calcInput: String, calcConvert: Double) {
//        self.calcInput = calcInput
//        self.calcConvert = calcConvert
//    }
    
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
            
        if let title = sender.currentTitle {
            print(title)
//            if (title == "clear") {
//                currentString = ""
//            }
            if (title == "clear") {
                currentString = ""
            } else if (title == "-") {
                if (currentString.suffix(3) == toggle) {
                    toggleValue()
                } else {
                    currentString = currentString.dropLast() + title
                }
            } else {
                currentString = currentString.dropLast() + title
            }
//            switch (title) {
//                case "clear":
//                    currentString = ""
//                    break
//                case "%":
//                    currentString = currentString.dropLast() + title
////                    value1 = value1 % value2
//                    break
////                case operators.contains(title):
//                case "-":
//                    if ((currentString.suffix(3) == toggle)) {
//                        toggleValue()
//                        break
//                    } else {
//                        currentString = currentString.dropLast() + title
//                        break
//                    }
////                    print(currentString)
////                    currentString = currentString.dropLast() + title
////                    print(currentString)
////                    break
//                case "+":
//                    currentString = currentString.dropLast() + title
//                default:
//                    print("End of symbol switch statement")
//                    break
//            }
//        }
//            print(checkArray)

            
//            var last3 = String(currentString.suffix(3))
//            print(last3)
//            if (operators.contains(title)
//                    && operators.contains(String(currentString.last!))
//                    && last3 != toggle) {
//
//  //              TODO find how to remove last string without killing number
//                print("Cannot have 2 operators in a row. Replacing operator.")
//                currentString = String(currentString.dropLast())
//                currentString = currentString + title
//            } else {
//                currentString = currentString + title
//            }
            totalLabel.text = currentString
//        }
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
                totalLabel.text = currentString
            }

//        TODO test if array is empty. If so and input isn't number, do nothing
        
        }
    }
    
    
    func toggleValue() {
        print()
    }
    
    
    func addNumberToArray() {
        currentString = calcInput + title!
        calcConvert = Double(calcInput)!
        allInput.append(calcConvert)
        calcInput = ""
    }
    
    
    func total() {
        
    }
    
    @IBOutlet weak var totalLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

 

}

