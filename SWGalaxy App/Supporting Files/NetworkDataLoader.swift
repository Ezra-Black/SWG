//
//  NetworkDataLoader.swift
//  SWGalaxy App
//
//  Created by Ezra Black on 9/7/20.
//  Copyright © 2020 Casanova Studios. All rights reserved.
//

import Foundation

protocol NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void)
}

extension URLSession: NetworkDataLoader {
    func loadData(using request: URLRequest, completion: @escaping (Data?, URLResponse?, Error?) -> Void) {
        dataTask(with: request) { (data, response, error) in
            completion(data, response, error)
        }.resume()
    }
}
