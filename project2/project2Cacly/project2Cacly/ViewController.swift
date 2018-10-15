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
    var allInput: [Any] = []
//    TODO make initalizer
//    init?(calcInput: String, calcConvert: Double) {
//        self.calcInput = calcInput
//        self.calcConvert = calcConvert
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        totalLabel.text = ""

    }

    @IBAction func buttonTouched(_ sender: UIButton) {
//        TODO get switch statement working
//        TODO append string with button touched
//        TODO convert string to double
        if let title = sender.currentTitle {
//        TODO test if array is empty. If so and input isn't number, do nothing
            if (allInput.count == 0) {
                switch (title) {
                    case "Clear":
                    
                        return
                    case "=":

                        return
                    // TODO exclude this? make first number entered negative?
                    // TODO also figure out what to do with +/- button
                    case "-":
                    
                        break
                    case "+":
                    
                        return
                    case "*":
                    
                        break
                    case "/":
                    
                        return
                    case "%":
                        
                        return
                    default:
                        print("\(title) button has some function or is a number")
                        break
                }
            } else {
                switch (title) {
                    case "Clear":
                        totalLabel.text = ""
                        allInput.removeAll()
                        print("Input items cleared")
                        break
                    case "=":
                        
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "-":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "+":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "*":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "/":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "%":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "+/-":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case ".":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "1":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "2":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "3":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "4":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "5":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "6":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "7":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "8":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    case "9":
                        currentString = calcInput + title
                        totalLabel.text = currentString
                        break
                    default:
                        print("Error occured, unknown button pressed")
                        return
                }
            }
            print(title)
//            totalLabel.text = title
            
        }
    }
    
    func addNumberToArray() {
        currentString = calcInput + title!
        calcConvert = Double(calcInput)
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

