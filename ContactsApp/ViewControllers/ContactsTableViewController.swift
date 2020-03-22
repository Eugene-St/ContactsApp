//
//  ContactsTableViewController.swift
//  ContactsApp
//
//  Created by Eugene St on 22.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

import UIKit

class ContactsTableViewController: UITableViewController {
  
  // MARK: - Public properties
  var contactsList: [Person] = []
  
  
  // MARK: - Table view data source
  override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    contactsList.count
  }
  
  override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "contactsCell", for: indexPath)
    
    cell.textLabel?.text = contactsList[indexPath.row].fullName
    
    return cell
  }
  
  
  // MARK: - Navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    guard let indexPath = tableView.indexPathForSelectedRow else { return }
    let detailsVC = segue.destination as! DetailsViewController
    detailsVC.email = contactsList[indexPath.row].email
    detailsVC.phone = contactsList[indexPath.row].phone
    detailsVC.titleFromContactsVC = contactsList[indexPath.row].fullName
  }
  
}
