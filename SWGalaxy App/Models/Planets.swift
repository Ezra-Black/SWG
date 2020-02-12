//
//  Planets.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

struct Planet: Codable {
    let name: String
    let population: String
    let climate: String
    let terrain: String
}

struct PlanetsSearch: Codable {
    let results: [Planet]
}

//thank you for using my app! 
