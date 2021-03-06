//
//  PersonDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit
import SpriteKit

class PersonDetailViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var skView: SKView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var birthYearLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var massLabel: UILabel!
    
    var person: Person?
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
    }
    #warning("FEATURE BUILD LOCK OUT TAG OUT - Updating of image asset names from v1 to v1.0.1 results in failed non zero exit code and loss of image data. Please allow time for feature updates, or switch any SKScene in question to their respective UIImageViews")
    private func updateViews() {
        guard let person = person else { return }
        if person.name == "Luke Skywalker" {
//            self.imageView.image = UIImage(named: "Luke.png")
        } else if person.name == "Leia Organa" {
            self.imageView.image = UIImage(named: "Leia.png")
        } else if person.name == "Obi-Wan Kenobi" {
            self.imageView.image = UIImage(named: "Obi-Wan.png")
        } else if person.name == "Han Solo" {
            self.imageView.image = UIImage(named: "Han.png")
        } else if person.name == "Biggs Darklighter" {
            self.imageView.image = UIImage(named: "Biggs.png")
        } else if person.name == "C-3PO" {
            self.imageView.image = UIImage(named: "c3po.png")
        } else if person.name == "Darth Vader" {
            self.imageView.image = UIImage(named: "Darth.png")
        } else if person.name == "Beru Whitesun lars" {
            self.imageView.image = UIImage(named: "Beru.png")
        } else if person.name == "Owen Lars" {
            self.imageView.image = UIImage(named: "owenLars.png")
        } else if person.name == "R2-D2" {
            self.imageView.image = UIImage(named: "R2D2(red).png")
        } else if person.name == "R5-D4" {
            self.imageView.image = UIImage(named: "R5D4.png")
        } else if person.name == "Yoda" {
            self.imageView.image = UIImage(named: "Yoda.png")
        }
        
        
        nameLabel.text = "Name: \(person.name)"
        genderLabel.text = "Gender: \(person.gender)"
        birthYearLabel.text = "Birth Year: \(person.birthYear)"
        heightLabel.text = "Height: \(person.height)"
        massLabel.text = "Mass(kg): \(person.mass)"
        
    }
}
