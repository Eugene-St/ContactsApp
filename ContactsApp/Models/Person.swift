//
//  Person.swift
//  ContactsApp
//
//  Created by Eugene St on 22.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

struct Person {
  
  let firstName: String
  let lastName: String
  let email: String
  let phone: String
  
  var fullName: String {
    "\(firstName) \(lastName)"
  }
  
  static func getContacts() -> [Person] {
    
    var persons: [Person] = []
    
    let firstNames = DataManager.shared.firstNames.shuffled()
    let lastNames = DataManager.shared.lastNames.shuffled()
    let emails = DataManager.shared.emails.shuffled()
    let phones = DataManager.shared.phones.shuffled()
    
    for index in 0..<firstNames.count {
      let person = Person(firstName: firstNames[index],
                          lastName: lastNames[index],
                          email: emails[index],
                          phone: phones[index])
      
      persons.append(person)
    }
    return persons
  }
  
}
