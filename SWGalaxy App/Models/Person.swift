//
//  Person.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

struct Person: Codable {
    let name: String
    let gender: String
    let birthYear: String
    let height: String
    let mass: String
}
struct PersonSearch: Codable {
    let results: [Person]
}
