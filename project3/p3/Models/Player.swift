//
//  Player.swift
//  jsonDecoding
//
//  Created by bryan witkowski on 10/30/18.
//  Copyright © 2018 bryan witkowski. All rights reserved.
//

import Foundation
struct Player: Decodable, CustomStringConvertible {
    var Number: Int
    var Position: String
    var Name: String
    var BatsThrows: String
    var Ht: String
    var Wt: String
    var DOB: String
    
    
    var description: String {
        return self.Name
    }
}
