//
//  DetailsViewController.swift
//  ContactsApp
//
//  Created by Eugene St on 22.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {

  // MARK: - IB Outlets
  @IBOutlet var emailLabel: UILabel!
  @IBOutlet var phoneLabel: UILabel!
  
  // MARK: - Public properties
  var email: String!
  var phone: String!
  var titleFromContactsVC: String!
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      emailLabel.text = email
      phoneLabel.text = phone
      navigationItem.title = titleFromContactsVC
      self.navigationController?.navigationBar.backItem?.title = "Back"
      
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
