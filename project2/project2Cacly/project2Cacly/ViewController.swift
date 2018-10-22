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
    var isTypingNumber: Bool?
    var isFirstOperator: Bool?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        isTypingNumber = false
        isFirstOperator = true
        totalLabel.text = "Hello world"
    }
    
    @IBAction func clearOrEqual(_ sender: UIButton) {
        let title = sender.tag
        switch title {
            case 11:
            // clear
                totalLabel.text = ""
                isTypingNumber = true
                isFirstOperator = true
                firstNumber = 0
                currentNumber = 0
                break
            case 16:
            // =
                performOperation()
                return
            case 18:
            // +/-
                currentNumber = toggleValue(currentNumber: currentNumber)
                return
            default:
                totalLabel.text = ""
                print("Err in clear or equal switch")
                break
        }
    }
    
    
    /**
     * Determine what symbol the user pressed and perform appropriate actions
     */
    @IBAction func operatorTouched(_ sender: UIButton) {
        let title = sender.tag
//        print(totalLabel.text)
//        if (isFirstOperator! == nil) {
//            isFirstOperator = true
//        }
//        if !isFirstOperator! {
//            performOperation()
//        }
        currentString = totalLabel.text!
        if (Double(currentString)!.isNaN) {
            symbol = title
        } else {
            print("current string: \(currentString)")
            firstNumber = Double(currentString)!
            isTypingNumber = false
        }
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
            case 17:
                // %
                totalLabel.text = "%"
                break
            default:
                isFirstOperator = true
                print("Err in symbol touched switch")
                break
        }

        symbol = title
    }
    
    /**
     * This function will take the code sent from the button pressed by the user and perform the appropriate operation
     */
    func performOperation() {
        var result: Double
        print("Operation symbol code: \(symbol)")
        switch symbol {
            case 12:
                result = firstNumber * currentNumber
                break
            case 13:
                result = firstNumber / currentNumber
                print("\(firstNumber) / \(currentNumber)")
                break
            case 14:
                result = firstNumber - currentNumber
                break
            case 15:
                result = firstNumber + currentNumber
                break
            case 17:
                result = 0
//                result = firstNumber % currentNumber
    //            previousNumber = previousNumber % currentNumber
                break
            default:
                print("Err performing operation")
                return
        }
        print("Operation prev num: \(firstNumber)")
        totalLabel.text = String(result)
        firstNumber = result
        isTypingNumber = true
        isFirstOperator = true
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
