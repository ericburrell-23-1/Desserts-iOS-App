//
//  MealModel.swift
//  Desserts
//
//  Created by Eric Burrell on 5/14/23.
//

import SwiftUI

struct meal: Identifiable, Codable {
    let strMeal: String
    let strMealThumb: String
    let idMeal: String
    
    var id: String { return idMeal }
}
