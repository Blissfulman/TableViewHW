//
//  DataManager.swift
//  TableViewHW
//
//  Created by User on 04.11.2020.
//  Copyright © 2020 Evgeny. All rights reserved.
//

import Foundation

struct DataManager {
    static let names = ["John", "Aaron", "Tim", "Ted", "Steven", "Ivan",
                        "Bruce", "Allan", "Carl", "Nicola", "Sharon", "Lev"]
    static let surnames = ["Smith", "Dow", "Isaacson", "Pennyworth",
                           "Jankins", "Po", "White", "Williams",
                           "Roberts", "Cook", "Gibson", "Tavares"]
    static let phoneNumbers = ["7465543", "7452311", "7342349", "7009322",
                               "9832422", "6723423", "7123121", "7405390",
                               "1273444", "7213991", "7281593", "7334231"]
    static let emails = ["John@mail.com", "First@avatar.com", "Dom@gmail.com",
                         "Home@tb.com", "Mymail@ya.com", "Mailll@mail.com",
                         "Secret@ya.com", "Hosdfs@mail.com", "Still@swift.com",
                         "Adam24@mail.com", "Pochta@ya.com", "Mewmew@mail.com"]
    
    static func getRandomPersons() -> [Person] {
        let names = self.names.shuffled()
        let surnames = self.surnames.shuffled()
        let phoneNumbers = self.phoneNumbers.shuffled()
        let emails = self.emails.shuffled()
        var result = [Person]()
        
        for index in 0...names.count - 1 {
            result.append(Person(name: names[index],
                                 surname: surnames[index],
                                 phoneNumber: phoneNumbers[index],
                                 email: emails[index]))
        }
        return result
    }
}
