//
//  Constants.swift
//  Desserts
//
//  Created by Eric Burrell on 5/14/23.
//

import SwiftUI

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
    case errorDecodingImage(_: String = "Could not decode image data")
}

// PREVIEWS
let sampleMeal = Meal(strMeal: "Ice Cream", strMealThumb: "https://handletheheat.com/wp-content/uploads/2021/06/homemade-vanilla-ice-cream-550x550.jpg", idMeal: "12345")


// LAYOUT
let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height
