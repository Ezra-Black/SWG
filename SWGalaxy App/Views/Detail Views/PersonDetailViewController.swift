//
//  PersonDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    
    var person: Person?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    private func updateViews() {
        guard let person = person else { return }
        nameLabel.text = "Name: \(person.name)"
        genderLabel.text = "Gender: \(person.gender)"
        birthYearLabel.text = "Birth Year: \(person.birthYear)"
        heightLabel.text = "Height: \(person.height)"
        massLabel.text = "Mass(kg): \(person.mass)"
    }
}
