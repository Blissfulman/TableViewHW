//
//  Person.swift
//  TableViewHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let phoneNumber: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}
