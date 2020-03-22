//
//  TabBarViewController.swift
//  ContactsApp
//
//  Created by Eugene St on 22.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
  
  let persons = Person.getContacts()

  override func viewDidLoad() {
      super.viewDidLoad()

      setupViewControllers(with: persons)
  }
  
  private func setupViewControllers(with persons: [Person]) {
      let contactListVC = viewControllers?.first as! FullinfoContactsTableViewController
      let sectionVC = viewControllers?.last as! ContactsTableViewController
      
    contactListVC.contactsList = persons
    sectionVC.contactsList = persons
  }
}
