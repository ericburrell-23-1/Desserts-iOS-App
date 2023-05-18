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
    Recipe(idMeal: "52855", strMeal: "Bananas Foster", strDrinkAlternate: "", strCategory: "Fruity", strArea: "America",
           strInstructions: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
           strMealThumb: "https://handletheheat.com/wp-content/uploads/2021/06/homemade-vanilla-ice-cream-550x550.jpg",
           strTags: "Fruit, Ice Cream, Bananas", strYoutube: "https://www.youtube.com/watch?v=B0BbsOSJmiM",
           strIngredient1: "Bananas", strIngredient2: "Sugar", strIngredient3: "Ice Cream", strIngredient4: "Olive Oil", strIngredient5: "Saffron",
           strIngredient6: "Mom's Spaghetti", strIngredient7: "", strIngredient8: "", strIngredient9: "", strIngredient10: "",
           strIngredient11: "", strIngredient12: "", strIngredient13: "", strIngredient14: "", strIngredient15: "",
           strIngredient16: "", strIngredient17: "", strIngredient18: "", strIngredient19: nil, strIngredient20: nil,
           strMeasure1: "8 lbs", strMeasure2: "1 cup", strMeasure3: "3 scoops", strMeasure4: "2 tbsp", strMeasure5: "10 oz",
           strMeasure6: "8 miles", strMeasure7: "", strMeasure8: "", strMeasure9: "", strMeasure10: "",
           strMeasure11: "", strMeasure12: "", strMeasure13: "", strMeasure14: "", strMeasure15: "",
           strMeasure16: "", strMeasure17: "", strMeasure18: "", strMeasure19: nil, strMeasure20: nil,
           strSource: "https://www.amazon.com/Best-Sellers-Cookbooks,-Food-Wine/zgbs/books/6", strImageSource: "Handle the Heat with Tessa Arias", strCreativeCommonsConfirmed: nil, dateModified: "")
}
