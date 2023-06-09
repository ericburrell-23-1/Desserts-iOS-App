//
//  RecipeModel.swift
//  Desserts
//
//  Created by Eric Burrell on 5/14/23.
//

import SwiftUI

struct Recipe: Identifiable, Decodable {
    let id:                 String
    let mealName:           String
    let instructions:       String
    let thumbnailURLString: String
    let youtubeURLString:   String
    let recipeSource:       String?
    let imageSource:        String?
    var ingredients =       [String]()
    var measurements =      [String]()
    
    enum CodingKeys: String, CodingKey {
        case id =                 "idMeal"
        case mealName =           "strMeal"
        case instructions =       "strInstructions"
        case thumbnailURLString = "strMealThumb"
        case youtubeURLString =   "strYoutube"
        case imageSource =        "strImageSource"
        case recipeSource =       "strSource"
        case ingredient1 =        "strIngredient1"
        case ingredient2 =        "strIngredient2"
        case ingredient3 =        "strIngredient3"
        case ingredient4 =        "strIngredient4"
        case ingredient5 =        "strIngredient5"
        case ingredient6 =        "strIngredient6"
        case ingredient7 =        "strIngredient7"
        case ingredient8 =        "strIngredient8"
        case ingredient9 =        "strIngredient9"
        case ingredient10 =       "strIngredient10"
        case ingredient11 =       "strIngredient11"
        case ingredient12 =       "strIngredient12"
        case ingredient13 =       "strIngredient13"
        case ingredient14 =       "strIngredient14"
        case ingredient15 =       "strIngredient15"
        case ingredient16 =       "strIngredient16"
        case ingredient17 =       "strIngredient17"
        case ingredient18 =       "strIngredient18"
        case ingredient19 =       "strIngredient19"
        case ingredient20 =       "strIngredient20"
        case measurement1 =       "strMeasure1"
        case measurement2 =       "strMeasure2"
        case measurement3 =       "strMeasure3"
        case measurement4 =       "strMeasure4"
        case measurement5 =       "strMeasure5"
        case measurement6 =       "strMeasure6"
        case measurement7 =       "strMeasure7"
        case measurement8 =       "strMeasure8"
        case measurement9 =       "strMeasure9"
        case measurement10 =      "strMeasure10"
        case measurement11 =      "strMeasure11"
        case measurement12 =      "strMeasure12"
        case measurement13 =      "strMeasure13"
        case measurement14 =      "strMeasure14"
        case measurement15 =      "strMeasure15"
        case measurement16 =      "strMeasure16"
        case measurement17 =      "strMeasure17"
        case measurement18 =      "strMeasure18"
        case measurement19 =      "strMeasure19"
        case measurement20 =      "strMeasure20"
    }
    
    var youtubeVideoID: String? {
        if let index = youtubeURLString.range(of: "=")?.upperBound {
            return String(youtubeURLString.suffix(from: index))
        } else {
            return nil
        }
    }
}

extension Recipe {
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id =                 try container.decode(String.self, forKey: .id)
        mealName =           try container.decode(String.self, forKey: .mealName)
        instructions =       try container.decode(String.self, forKey: .instructions)
        thumbnailURLString = try container.decode(String.self, forKey: .thumbnailURLString)
        youtubeURLString =   try container.decode(String.self, forKey: .youtubeURLString)
        imageSource =        try container.decode(String?.self, forKey: .imageSource)
        recipeSource =       try container.decode(String?.self, forKey: .recipeSource)
        ingredients.append(try container.decode(String.self, forKey: .ingredient1))
        ingredients.append(try container.decode(String.self, forKey: .ingredient2))
        ingredients.append(try container.decode(String.self, forKey: .ingredient3))
        ingredients.append(try container.decode(String.self, forKey: .ingredient4))
        ingredients.append(try container.decode(String.self, forKey: .ingredient5))
        ingredients.append(try container.decode(String.self, forKey: .ingredient6))
        ingredients.append(try container.decode(String.self, forKey: .ingredient7))
        ingredients.append(try container.decode(String.self, forKey: .ingredient8))
        ingredients.append(try container.decode(String.self, forKey: .ingredient9))
        ingredients.append(try container.decode(String.self, forKey: .ingredient10))
        ingredients.append(try container.decode(String.self, forKey: .ingredient11))
        ingredients.append(try container.decode(String.self, forKey: .ingredient12))
        ingredients.append(try container.decode(String.self, forKey: .ingredient13))
        ingredients.append(try container.decode(String.self, forKey: .ingredient14))
        ingredients.append(try container.decode(String.self, forKey: .ingredient15))
        ingredients.append(try container.decode(String.self, forKey: .ingredient16))
        ingredients.append(try container.decode(String.self, forKey: .ingredient17))
        ingredients.append(try container.decode(String.self, forKey: .ingredient18))
        ingredients.append(try container.decode(String.self, forKey: .ingredient19))
        ingredients.append(try container.decode(String.self, forKey: .ingredient20))
        measurements.append(try container.decode(String.self, forKey: .measurement1))
        measurements.append(try container.decode(String.self, forKey: .measurement2))
        measurements.append(try container.decode(String.self, forKey: .measurement3))
        measurements.append(try container.decode(String.self, forKey: .measurement4))
        measurements.append(try container.decode(String.self, forKey: .measurement5))
        measurements.append(try container.decode(String.self, forKey: .measurement6))
        measurements.append(try container.decode(String.self, forKey: .measurement7))
        measurements.append(try container.decode(String.self, forKey: .measurement8))
        measurements.append(try container.decode(String.self, forKey: .measurement9))
        measurements.append(try container.decode(String.self, forKey: .measurement10))
        measurements.append(try container.decode(String.self, forKey: .measurement11))
        measurements.append(try container.decode(String.self, forKey: .measurement12))
        measurements.append(try container.decode(String.self, forKey: .measurement13))
        measurements.append(try container.decode(String.self, forKey: .measurement14))
        measurements.append(try container.decode(String.self, forKey: .measurement15))
        measurements.append(try container.decode(String.self, forKey: .measurement16))
        measurements.append(try container.decode(String.self, forKey: .measurement17))
        measurements.append(try container.decode(String.self, forKey: .measurement18))
        measurements.append(try container.decode(String.self, forKey: .measurement19))
        measurements.append(try container.decode(String.self, forKey: .measurement20))
    }
}

