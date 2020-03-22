//
//  FullinfoContactsTableViewController.swift
//  ContactsApp
//
//  Created by Eugene St on 22.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

import UIKit

class FullinfoContactsTableViewController: UITableViewController {

  // MARK: - Public properties
    var contactsList: [Person] = []
  
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
      contactsList.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
      let cell = tableView.dequeueReusableCell(withIdentifier: "fullInfoCell", for: indexPath)
      
      switch indexPath.row {
      case 0: cell.textLabel?.text = contactsList[indexPath.section].email
      default: cell.textLabel?.text = contactsList[indexPath.section].phone
      }

        return cell
    }
  
  override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
    contactsList[section].fullName
  }
  
  override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    tableView.deselectRow(at: indexPath, animated: true)
  }

}
