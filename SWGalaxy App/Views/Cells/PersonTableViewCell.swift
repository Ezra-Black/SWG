//
//  PersonTableViewCell.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit



class PersonTableViewCell: UITableViewCell {

    @IBOutlet weak var personNameLabel: UILabel!
    
    var person: Person? {
           didSet {
               updateViews()
           }
       }
       
       private func updateViews() {
           guard let person = person else { return }
           
           personNameLabel.text = person.name
       }
}
