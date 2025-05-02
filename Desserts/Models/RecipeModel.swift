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
    var ingredients:        [String]
    var measurements:       [String]
    
    enum CodingKeys: String, CodingKey {
        case id =                 "idMeal"
        case mealName =           "strMeal"
        case instructions =       "strInstructions"
        case thumbnailURLString = "strMealThumb"
        case youtubeURLString =   "strYoutube"
        case imageSource =        "strImageSource"
        case recipeSource =       "strSource"
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
        
        let dynamicContainer = try decoder.container(keyedBy: DynamicCodingKeys.self)
        
        ingredients = []
        measurements = []
        
        for index in 1...20 {
            if let ingredientKey = DynamicCodingKeys(stringValue: "strIngredient\(index)"),
               let ingredient = try dynamicContainer.decodeIfPresent(String.self, forKey: ingredientKey),
               !ingredient.trimmingCharacters(in: .whitespaces).isEmpty {
                ingredients.append(ingredient)
            }
            
            if let measurementKey = DynamicCodingKeys(stringValue: "strMeasure\(index)"),
               let measurement = try dynamicContainer.decodeIfPresent(String.self, forKey: measurementKey),
               !measurement.trimmingCharacters(in: .whitespaces).isEmpty {
                measurements.append(measurement)
            }
        }
                    
    }
}

struct DynamicCodingKeys: CodingKey {
    var stringValue: String
    
    init?(stringValue: String) {
        self.stringValue = stringValue
        self.intValue = nil
    }
    
    var intValue: Int?
    
    init?(intValue: Int) {
        return nil
    }
    
    
}
