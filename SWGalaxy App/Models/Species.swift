//
//  Species.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

struct Species: Codable {
    let name: String
    let homeworld: String
    let language: String
}

struct SpeciesSearch: Codable {
    let results: [Species]
}
