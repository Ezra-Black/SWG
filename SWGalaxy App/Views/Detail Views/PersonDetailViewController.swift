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
    
    @IBOutlet weak var imageView: UIImageView!
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
        if person.name == "Luke Skywalker" {
            self.imageView.image = UIImage(named: "Luke.png")
        } else if person.name == "Leia Organa" {
            self.imageView.image = UIImage(named: "Leia.png")
        } else if person.name == "Obi-Wan Kenobi" {
            self.imageView.image = UIImage(named: "Obi-Wan.png")
        }
        nameLabel.text = "Name: \(person.name)"
        genderLabel.text = "Gender: \(person.gender)"
        birthYearLabel.text = "Birth Year: \(person.birthYear)"
        heightLabel.text = "Height: \(person.height)"
        massLabel.text = "Mass(kg): \(person.mass)"
        
    }
}
