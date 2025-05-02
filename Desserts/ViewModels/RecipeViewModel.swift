//
//  RecipeViewModel.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipe: Recipe?
    let mealId: String
    let httpClient = HttpClient()
    
    init(mealId: String) {
        self.mealId = mealId
    }
    
    func fetchRecipe() async throws {
        let urlString = APIEndpoints.recipeByID + mealId
        let recipesResponse: [Recipe] = try await httpClient.fetch(urlString: urlString)
        DispatchQueue.main.async {
            self.recipe = recipesResponse[0]
        }
    }
}
