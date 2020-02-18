//
//  PersonDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    //MARK: - Outlets
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    
    //MARK: - Properties
    
    var person: Person?
    
    //MARK: - Functions
    
  

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        setupSubViews()
    }
    
    private func updateViews() {
        guard let person = person else { return }
        nameLabel.text = "Name: \(person.name)"
        genderLabel.text = "Gender: \(person.gender)"
        birthYearLabel.text = "Birth Year: \(person.birthYear)"
        heightLabel.text = "Height: \(person.height)"
        massLabel.text = "Mass(kg): \(person.mass)"
    }
    
    //MARK: - SubViews
    
    private func setupSubViews() {
        
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(nameLabel)
        
        
        //MARK: - Name Label Constraints
        
        nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: -20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: -8).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: 8).isActive = true
        self.nameLabel = nameLabel
        
        let genderLabel = UILabel()
        genderLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(genderLabel)
        self.genderLabel = genderLabel
        
        let birthYearLabel = UILabel()
        birthYearLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(birthYearLabel)
        self.birthYearLabel = birthYearLabel
        
        let heightLabel = UILabel()
        heightLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(heightLabel)
        self.heightLabel = heightLabel
        
        let massLabel = UILabel()
        massLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(massLabel)
        self.massLabel = massLabel
    }
    
    
    
}
