//
//  SpeciesDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class SpeciesDetailViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var homeworldLabel: UILabel!
    @IBOutlet weak var language: UILabel!
    
    var species: Species?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard let species = species else { return }
        nameLabel.text = "Name: \(species.name)"
        homeworldLabel.text = "HomeWorld: \(species.homeworld)"
        language.text = "Language: \(species.language)"
    }
}
