//
//  Person.swift
//  Protocols
//
//  Created by Witkowski, Bryan E on 10/23/18.
//  Copyright © 2018 Witkowski, Bryan E. All rights reserved.
//

import Foundation

class Person: CustomStringConvertible, Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        if lhs.name == rhs.name && lhs.email == rhs.email && lhs.phone == rhs.email {
            return true
        } else {
            return false
        }
    }
    
    var description: String {
        return "Name: \(self.name)\nEmail: \(self.email)\nPhone: \(self.phone)"
    }
    
    
    var name: String
    var email: String
    var phone: String
    
    init?(name: String, email: String, phone: String) {
        self.name = name
        self.email = email
        self.phone = phone
    }
    
}
