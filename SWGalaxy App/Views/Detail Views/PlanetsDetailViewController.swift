//
//  PlanetsDetailViewController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/24/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import UIKit

class PlanetsDetailViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var popLbl: UILabel!
    @IBOutlet weak var climateLbl: UILabel!
    @IBOutlet weak var terrainLbl: UILabel!
    
    var planet: Planet?

    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()
        // Do any additional setup after loading the view.
    }
    
    private func updateViews() {
        guard let planet = planet else { return }
        nameLbl.text = "Planet: \(planet.name)"
        popLbl.text = "Population: \(planet.population)"
        climateLbl.text = "Climate: \(planet.climate)"
        terrainLbl.text = "Terrrain: \(planet.terrain)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
