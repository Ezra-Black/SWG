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
    @IBOutlet weak var imageView: UIImageView!
    
    var species: Species?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard let species = species else { return }
        
        if species.name == "Gungan" {
            self.imageView.image = UIImage(named: "Gungan.png")
        } else if species.name == "Mon Calamari" {
            self.imageView.image = UIImage(named: "monCalamari.png")
        } else if species.name == "Neimodian" {
            self.imageView.image = UIImage(named: "Neimodian.png")
        } else if species.name == "Rodian" {
            self.imageView.image = UIImage(named: "Rodian.png")
        } else if species.name == "Toydarian" {
            self.imageView.image = UIImage(named: "Toydarian.png")
        }
        nameLabel.text = "Name: \(species.name)"
        homeworldLabel.text = "HomeWorld: \(species.homeworld)"
        language.text = "Language: \(species.language)"
    }
}
