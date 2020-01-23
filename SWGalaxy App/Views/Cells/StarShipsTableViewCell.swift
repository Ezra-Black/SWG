//
//  StarShipsTableViewCell.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class StarShipsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var starshipNameLabel: UILabel!

    var starship: Starship? {
        didSet {
            updateViews()
        }
    }
    
    private func updateViews() {
        guard let starship = starship else { return }
        
        starshipNameLabel.text = starship.name
    }

}
