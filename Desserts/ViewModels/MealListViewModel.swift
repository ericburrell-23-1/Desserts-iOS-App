//
//  MealListViewModel.swift
//  Desserts
//
//  Created by Eric Burrell on 5/16/23.
//

import SwiftUI

class mealListViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var thumbnails = Dictionary<String, UIImage>()
    let httpClient = HttpClient()
    
    private init() { }
    static let shared = mealListViewModel()
    
    // MARK: - FETCH ALL MEALS
    func fetchMeals() async throws {
        let mealsResponse: [Meal] = try await httpClient.fetch(urlString: APIEndpoints.allDesserts)
        DispatchQueue.main.async {
            self.meals = mealsResponse.sorted(by: { $0.strMeal < $1.strMeal })
        }
    }
    
    // MARK: - DOWNLOAD THUMBNAILS
    func downloadImages() async throws {
        for meal in meals {
            let imageResponse = try await httpClient.downloadImage(urlString: meal.strMealThumb)
            DispatchQueue.main.async {
                self.thumbnails[meal.id] = imageResponse
            }
        }
    }
}
