//
//  DataManager.swift
//  ContactsApp
//
//  Created by Eugene St on 22.03.2020.
//  Copyright © 2020 Eugene St. All rights reserved.
//

class DataManager {
  
  static let shared = DataManager()
  
  init() { }
  
  let firstNames = ["Eugene", "Olga", "Steyci", "Martin",
                    "Robert", "David", "Garik", "Alex",
                    "Irina", "Elena", "Nickolas", "Mike"]
  
  let lastNames = ["St", "Ptovansal", "Kiberlok", "Valdisom",
                   "Ktilosak", "Prertan", "Lovales", "Malevich",
                   "Ptushkin", "Kurnishov", "Parkhomenko", "Dred"]
  
  let phones = ["943-2945-239", "438-4923-7482", "3423-47234-672", "4324-324-672",
                "423-4674-8234", "43487-236-478", "432-4256-5645", "098-09873-2824",
                "48-97498-234", "0943-28490-872", "312-54645-3224", "4324-65675-321313" ]
  
   let emails = ["bla@gmail.com", "boss@gmail.com" , "erwr@yahoo.com", "fdsf@yahoo.com",
                 "fdf@yahoo.com", "ejhdsk@yahoo.com", "fsdfd@gmail.com", "dsfsd@gmail.com",
                 "fdsfsd@gmail.com", "hjfkhsdf@gmail.com", "ewiueq@gmail.com", "lkjj@gmail.com"]
  
}
