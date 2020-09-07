//
//  PersonController.swift
//  SWGalaxy App
//
//  Created by Joseph Rogers on 1/22/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

class PersonController {
    
    var dataLoader: NetworkDataLoader
      var searchResults: [Person] = []
    
    init(dataLoader: NetworkDataLoader = URLSession.shared) {
        self.dataLoader = dataLoader
    }
    
    //MARK: Properties
    
    var people: [Person] = []
    
    
    //MARK: Networking
    
    let baseURL = URL(string: "https://swapi.dev/api/people")!
    
    //MARK: Neworking Method Call
    
    func searchForPeopleWith(searchTerm: String, completion: @escaping () -> Void) {
        print("searchForPeople Triggered")
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
                let personSearch = try jsonDecoder.decode(PersonSearch.self, from: data)
                self.people.removeAll()
                self.people.append(contentsOf: personSearch.results)
                print(" The result of the call to the API are as follows: \(personSearch.results)")
            } catch {
                print("Unable to decode data into object of type [Person]: \(error)")
            }
            completion()
            print(data)
        }.resume()
      
    }
    
}
