//
//  SpeciesTableViewCell.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class SpeciesTableViewCell: UITableViewCell {
    @IBOutlet weak var speciesNameLabel: UILabel!
    
    var species: Species? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let species = species else { return }
        
        speciesNameLabel.text = species.name
    }
}
