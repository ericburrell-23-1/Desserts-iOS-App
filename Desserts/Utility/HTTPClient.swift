//
//  HTTPClient.swift
//  Desserts
//
//  Created by Eric Burrell on 5/15/23.
//

import Foundation

class HttpClient {
    let urlSession: URLSession
    
    init(urlSession: URLSession = URLSession.shared) {
        self.urlSession = urlSession
    }
    
    func fetch<T: Codable>(urlString: String) async throws -> [T] {
        guard let url = URL(string: urlString) else {
            throw HttpError.badURL()
        }
        let (data, response) = try await urlSession.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                   throw HttpError.badResponse()
               }
        
        guard let object = try? JSONDecoder().decode(Dictionary<String, [T]>.self, from: data) else {
            throw HttpError.errorDecodingData()
        }
        
        return object.values.first ?? []
    }
}
