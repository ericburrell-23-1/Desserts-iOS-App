//
//  HTTPClient.swift
//  Desserts
//
//  Created by Eric Burrell on 5/15/23.
//

import Foundation

class HttpClient {
    func fetch<T: Codable>(urlString: String) async throws -> [T] {
        guard let url = URL(string: urlString) else {
            throw HttpError.badURL()
        }
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard (response as? HTTPURLResponse)?.statusCode == 200 else {
                   throw HttpError.badResponse()
               }
        
        guard let object = try? JSONDecoder().decode([T].self, from: data) else {
            throw HttpError.errorDecodingData()
        }
        
        return object
    }
}
