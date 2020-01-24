//
//  PlanetsTableViewCell.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class PlanetsTableViewCell: UITableViewCell {

    @IBOutlet weak var planetNameLabel: UILabel!
    
    var planet: Planet? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let planet = planet else { return }
        
        planetNameLabel.text = planet.name
    }
}
