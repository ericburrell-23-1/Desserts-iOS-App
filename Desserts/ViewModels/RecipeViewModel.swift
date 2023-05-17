//
//  RecipeViewModel.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import Foundation

class RecipeViewModel: ObservableObject {
    @Published var recipe: Recipe!
    @Published var idMeal: String = ""
    let httpClient = HttpClient()
    
    private init() { }
    static let shared = RecipeViewModel()
    
    func fetchRecipe() async throws {
        let urlString = APIEndpoints.recipeByID + idMeal
        let recipesResponse: [Recipe] = try await httpClient.fetch(urlString: urlString)
        DispatchQueue.main.async {
            self.recipe = recipesResponse[0]
        }
    }
}
