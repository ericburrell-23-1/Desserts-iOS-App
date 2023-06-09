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

// LAYOUT
let screenWidth = UIScreen.main.bounds.size.width
let screenHeight = UIScreen.main.bounds.size.height

// COLOR
struct CustomColor {
    static let lightGray = Color(red: 220/255, green: 220/255, blue: 220/255)
    static let darkGray = Color(red: 70/255, green: 70/255, blue: 70/255)
    static let lightPurple = Color(red: 207/255, green: 180/255, blue: 222/255)
    static let lightPink = Color(red: 247/255, green: 188/255, blue: 188/255)
}

// PREVIEWS
struct PreviewItems {
    static let sampleMeal = Meal(strMeal: "Ice Cream", strMealThumb: "https://handletheheat.com/wp-content/uploads/2021/06/homemade-vanilla-ice-cream-550x550.jpg", idMeal: "12345")
    static let sampleRecipe =
    Recipe(id: "52855", mealName: "Bananas Foster",
           instructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           thumbnailURLString: "https://handletheheat.com/wp-content/uploads/2021/06/homemade-vanilla-ice-cream-550x550.jpg",
           youtubeURLString: "https://www.youtube.com/watch?v=B0BbsOSJmiM",
           recipeSource: "https://www.amazon.com/Best-Sellers-Cookbooks,-Food-Wine/zgbs/books/6", imageSource: "Handle the Heat with Tessa Arias",
           ingredients: ["Bananas", "Sugar", "Ice Cream", "Olive Oil", "Saffron", "Mom's Spaghetti"],
           measurements: ["8 lbs", "1 cup", "3 scoops", "2 tbsp", "10 oz", "8 miles"])
}
