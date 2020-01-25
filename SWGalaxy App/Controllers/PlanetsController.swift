//
//  PlanetsController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

class PlanetsController {
    
    //MARK: Properties
    
    var planets: [Planet] = []
    var oldSearchTerms: [String] = []
    
    //MARK: Networking
    
    let baseURL = URL(string:  "https://swapi.co/api/planets")!
    
    //MARK: Networking Method Call
    
    func searchForPlanetsWith(searchTerm: String, completion: @escaping () -> Void) {
        if oldSearchTerms.contains(searchTerm) {
            print("The search term you have entered has already been pulled for a planet.")
        } else {
            var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
            print("The link to the API Resource is: \(String(describing: urlComponents))")
            let searchTermQUeryItem = URLQueryItem(name: "search", value: searchTerm)
            oldSearchTerms.append(searchTerm)
            print(oldSearchTerms)
            urlComponents?.queryItems = [searchTermQUeryItem]
            
            guard let requestURL = urlComponents?.url else {
                print("request URL is nil")
                completion()
                return
            }
            
            var request = URLRequest(url: requestURL)
            request.httpMethod = HTTPMethod.get.rawValue
            
            URLSession.shared.dataTask(with: request) { data, _, error in
                if let error = error {
                    print("Error fetching data: \(error)")
                    return
                }
                guard let data = data else {
                    print("No data returned from data Task")
                    return
                }
                
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                do {
                    let planetSearch = try jsonDecoder.decode(PlanetsSearch.self, from: data)
                    self.planets.append(contentsOf: planetSearch.results)
                } catch {
                    print("Unable to decode data into object of type [Planets]: \(error)")
                }
                completion()
                print(data)
            }.resume()
        }
    }
}
