//
//  Starships.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

struct Starship: Codable {
    let name: String
    let model: String
    let starshipClass: String
    let manufacturer: String
    let crew: String
    let passengers: String
}

struct StarshipSearch: Codable {
    let results: [Starship]
}
