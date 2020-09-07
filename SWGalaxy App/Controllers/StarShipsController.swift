//
//  StarShipsController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

class StarshipsController {
    
    var dataLoader: NetworkDataLoader
    
    init(dataLoader: NetworkDataLoader = URLSession.shared) {
        self.dataLoader = dataLoader
    }
    
    //MARK: Properties
    
    var starships: [Starship] = []
    
    
    //MARK: Networking
    
    let baseURL = URL(string:  "https://swapi.dev/api/starships")!
    
    //MARK: Networking Method Call
    
    func searchForStarShipsWith(searchTerm: String, completion: @escaping () -> Void) {
        print("searchForStarshipsWithFunction Triggered")
        
        var urlComponents = URLComponents(url: baseURL, resolvingAgainstBaseURL: true)
        print("The link to the API Resource is: \(String(describing: urlComponents))")
        let searchTermQueryItem = URLQueryItem(name: "search", value: searchTerm)
        
        urlComponents?.queryItems = [searchTermQueryItem]
        
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
                let starshipsSearch = try jsonDecoder.decode(StarshipSearch.self, from: data)
                self.starships.removeAll()
                self.starships.append(contentsOf: starshipsSearch.results)
                print(starshipsSearch.results)
            } catch {
                print("Unable to decode data into object of type [Starships]: \(error)")
            }
            completion()
            print(data)
        }.resume()
        
    }
}
