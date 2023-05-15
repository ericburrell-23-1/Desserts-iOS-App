//
//  Constants.swift
//  Desserts
//
//  Created by Eric Burrell on 5/14/23.
//

import Foundation

// API
struct APIEndpoints {
    static let allDesserts =  "https://themealdb.com/api/json/v1/1/filter.php?c=dessert"
    static let recipeByID = "https://themealdb.com/api/json/v1/1/lookup.php?i="
}

// HTTPCLIENT
enum HttpError: Error {
    case badURL(_: String = "Invalid URL")
    case badResponse(_: String = "Received a response error from the server")
    case errorDecodingData(_: String = "Could not decode JSON data")
}
