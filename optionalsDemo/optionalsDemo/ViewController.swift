//
//  ViewController.swift
//  optionalsDemo
//
//  Created by Goldbin, Aaron A on 10/2/18.
//  Copyright © 2018 Goldbin, Aaron A. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

//    struct Person {
//        var residence = Residence?
//    }
//    struct Residence {
//        var address = Address?
//    }
//    struct Address {
//        var buildingNumber: Int
//        var streentName: String
//    }
    
//    if let street = myPerson.residence?.address?.streetName
    
    
    struct StreamingReleaseDate {
        var seriesName: String?
        var releaseYear: Int?
        var releaseMonth: Int?
        var budget: Double
        var expectedRevenue: Double
        
        init?(seriesName: String?, releaseYear: Int?, releaseMonth: Int?, budget: Double, expectedRevenue: Double) {
            if (expectedRevenue > budget) {
                // initalize all attributes
                self.seriesName = seriesName
                self.releaseYear = releaseYear
                self.releaseMonth = releaseMonth
                self.budget = budget
                self.expectedRevenue = expectedRevenue
            } else {
                return nil
            }
        }
        
        func printDetails() {
            
            guard let series = self.seriesName, let year = self.releaseYear, let month = self.releaseMonth else {
                return // this code executes when conditions are false
            }

//            guard let series = self.seriesName else {
//                return
//            }
//            guard let year = self.releaseYear else {
//                return
//            }
//            guard let month = self.releaseMonth else {
//                return
//            }
            
//            if let series = self.seriesName {
//                print(series)
//            } else {
//                print("Unknown series name")
//            }
//            if let year = self.releaseYear {
//                print(year)
//            } else {
//                print("Unkown release year")
//            }
//            if let month = self.releaseMonth {
//                print(month)
//            } else {
//                print("Unknown release month")
//            }

            /*
             this is what a guard statement is doing
             if (self.seriesName != nil) {
             
             } else {
                return
             }
             */
            print("The series \(series) will be released in \(year) during the \(month) month")
            print("---------------------------")
        }
    }
    
//    let items [Any] = ["agoldbin@madisoncollege.edu", 500, false, true, streamingReleaseDates(seriesName: "house of cards", releaseYear: 2019, releaseMonth: nil, budget: 10, expectedRevenue: 10) as Any]
    
//            if let month = self.releaseMonth, let year = self.releaseYear, let series = self.seriesName {
//                print("Netflix is releasing \(series) in \(year) during \(month)")
//            } else {
//                print("Netflix is releasing a new series at some point")
//            }
//        }
        
    
    //    @IBAction func numberButtonTouched(_ sender: Any) {
    //    }
        @IBAction func numberButtonTouched(_ sender: UIButton) {
            if let title = sender.currentTitle {
                print(title)
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let ozarks = StreamingReleaseDate(seriesName: "Ozarks", releaseYear: 2019, releaseMonth: 10, budget: 20, expectedRevenue: 30)
        let strangerThings = StreamingReleaseDate(seriesName: "Stranger Things", releaseYear: nil, releaseMonth: 7, budget: 50, expectedRevenue: 45)
        
        let hobbitTVSeries = StreamingReleaseDate(seriesName: nil, releaseYear: 2019, releaseMonth: 10, budget: 100, expectedRevenue: 200)
        
        if let ozarks2019 = ozarks {
            ozarks2019.printDetails()
        }
/*
         this code is the same as above
         if ozarks != nil {
            ozarks!.printDetails()
         }
*/
        if let strangerThings2019 = strangerThings {
            strangerThings2019.printDetails()
        } else {
            print(strangerThings?.seriesName)
        }
        
        hobbitTVSeries?.printDetails()
        
    }
}
