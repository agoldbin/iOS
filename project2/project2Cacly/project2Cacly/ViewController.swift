//
//  ViewController.swift
//  project2Cacly
//
//  Created by Aaron Goldbin on 10/13/18.
//  Copyright © 2018 Aaron Goldbin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var currentNumber: Double = 0.0
    var firstNumber: Double = 0.0
    var symbol: Int = 0
    let toggle = "+/-"
    var currentString = ""
    var performMath = false
    var isFirstNumber = true
    var isTypingNumber = false
    
//    struct MathStuff {
//        var currentNumber: Double?
//        var previousNumber: Double?
//
//        init?(currentNumber: Double?, previousNumber: Double?, isFirstNumber: Bool) {
//            if (isFirstNumber) {
//                // initalize all attributes
//                self.previousNumber = currentNumber
//                print("In init")
//            } else {
//                return nil
//            }
//        }
//    }

//    init?(currentNumber: Double?, previousNumber: Double?) {
//
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        totalLabel.text = "Hello world"
    }
    

    /**
     * Determine what symbol the user pressed and perform appropriate actions
     */
    @IBAction func operatorTouched(_ sender: UIButton) {
        let title = sender.tag
//        if (isFirstNumber) {
//            previousNumber = Double(currentNumber)
//            isFirstNumber = false
//            print("First num entered: \(previousNumber)")
//        }
//        currentString = ""
//        print("previous num: \(firstNumber)")
        currentString = totalLabel.text!
        print("current string: \(currentString)")
        isTypingNumber = false
        switch title {
            case 11:
            // clear
                totalLabel.text = ""
//                isFirstNumber = true
                isTypingNumber = true
                firstNumber = 0
                currentNumber = 0
                
                //                currentString = ""
//                totalLabel.text = ""
                break
    
            // If btn pressed was a calculation btn
            case 12 ... 17:
//                var currentString = totalLabel.text
//                isTypingNumber = false
//                if isTypingNumber {
                    firstNumber = Double(currentString)!
                    print("Nested switch, 1st num: \(firstNumber)")
//                }
                switch title {
                    case 12:
                        // *
                        totalLabel.text = "x"
                        break
                    case 13:
                        // /
                        totalLabel.text = "/"
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
                        performOperation()
                        return
                    case 17:
                        // %
                        totalLabel.text = "%"
                        break
                    default:
                        print("Err in nested symbol touched switch")
                        break
                }
                case 18:
                // +/-
                    currentNumber = toggleValue(currentNumber: currentNumber)
                    return
                default:
                    totalLabel.text = ""
                    print("Err in main symbol touched switch")
                    break
        }
        symbol = title
    }
    
    /**
     * This function will take the code sent from the button pressed by the user and perform the appropriate operation
     */
    func performOperation() {
        print("Operation symbol code: \(symbol)")
        switch symbol {
        case 12:
            firstNumber *= currentNumber
            break
        case 13:
            firstNumber /= currentNumber
            print("\(firstNumber) / \(currentNumber)")
            break
        case 14:
            firstNumber -= currentNumber
            break
        case 15:
            firstNumber += currentNumber
            break
        case 17:
//            previousNumber = previousNumber % currentNumber
            break
        default:
            print("Err performing operation")
        }
        print("Operation prev num: \(firstNumber)")
//        currentNumber = 0
        totalLabel.text = String(firstNumber)
        
        isTypingNumber = true
//        isFirstNumber = true
    }
    
    /**
     * This function will determine what number the user entered. It will also ensure that a number only has 1 decimal
     */
    @IBAction func numberTouched(_ sender: UIButton) {
        if let title = sender.currentTitle {
            print("debug 1: \(title)")
            if (sender.currentTitle == "." && (totalLabel.text?.contains("."))!) {
                print("Number may only contain 1 decimal")
            
            } else {
//                currentString += title
                currentNumber = Double(title)!
            }
            print("Cur num: \(currentNumber)")
            totalLabel.text = String(currentNumber)
        }
    }
    
    /**
     * This function will toggle the users' current number between positive and negative
     */
    func toggleValue(currentNumber: Double) -> Double {
        print("debug 3: \(currentNumber)")
        let toggledNumber = currentNumber * -1
        print("Toggled num: \(toggledNumber)")
        totalLabel.text = String(toggledNumber)
        return toggledNumber
    }
    

    // The label that will display the number, symbol or total
    @IBOutlet weak var totalLabel: UILabel!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
