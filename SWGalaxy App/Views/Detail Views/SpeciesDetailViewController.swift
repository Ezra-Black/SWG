//
//  SpeciesDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit
import SpriteKit

class SpeciesDetailViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var homeworldLabel: UILabel!
    @IBOutlet weak var language: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var skView: SKView!
    
    var species: Species?
    private var skscene: CustomScene? = nil
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewDidAppear(animated)
           skscene = CustomScene(size: view.bounds.size)
           skView.presentScene(skscene)
        skscene?.scaleMode = SKSceneScaleMode.aspectFill
        skscene?.backgroundColor = .clear
        skView.allowsTransparency = true
        
       }
    
 
    private func updateViews() {
        guard let species = species else { return }
        
        if species.name == "Gungan" {
            self.imageView.image = UIImage(named: "Gungan.png")
        } else if species.name == "Mon Calamari" {
//            self.imageView.image = UIImage(named: "monCalamari.png")
        } else if species.name == "Neimodian" {
            self.imageView.image = UIImage(named: "Neimodian.png")
        } else if species.name == "Rodian" {
            self.imageView.image = UIImage(named: "Rodian.png")
        } else if species.name == "Toydarian" {
            self.imageView.image = UIImage(named: "Toydarian.png")
        } else if species.name == "Sullustan" {
            self.imageView.image = UIImage(named: "Sullustan.png")
        }
        nameLabel.text = "Name: \(species.name)"
        homeworldLabel.text = "HomeWorld: \(species.homeworld)"
        language.text = "Language: \(species.language)"
    }
}
