//
//  StarShipDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class StarShipDetailViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var modelLabel: UILabel!
    @IBOutlet weak var classLabel: UILabel!
    @IBOutlet weak var manufacturerLabel: UILabel!
    @IBOutlet weak var crewLabel: UILabel!
    @IBOutlet weak var passengersLabel: UILabel!
    
    var starship: Starship?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard let starship = starship else { return }
        nameLabel.text = "Name: \(starship.name)"
        modelLabel.text = "Model: \(starship.model)"
        classLabel.text = "Class: \(starship.starshipClass)"
        manufacturerLabel.text = "Manufacturer: \(starship.manufacturer)"
        crewLabel.text = "Crew: \(starship.crew)"
        passengersLabel.text = "Passenger Capacity: \(starship.passengers)"
        
    }
}
