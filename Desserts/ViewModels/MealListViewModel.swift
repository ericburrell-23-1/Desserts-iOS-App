//
//  MealListViewModel.swift
//  Desserts
//
//  Created by Eric Burrell on 5/16/23.
//

import SwiftUI

class MealListViewModel: ObservableObject {
    @Published var meals = [Meal]()
    @Published var thumbnails = Dictionary<String, UIImage>()
    let httpClient = HttpClient()
    
    // MARK: - FETCH ALL MEALS
    func fetchMeals() async throws {
        let mealsResponse: [Meal] = try await httpClient.fetch(urlString: APIEndpoints.allDesserts)
        DispatchQueue.main.async {
            self.meals = mealsResponse.sorted(by: { $0.strMeal < $1.strMeal })
        }
    }
    
    // MARK: - DOWNLOAD THUMBNAILS
    func downloadImages() async throws {
        await withTaskGroup(of: (String, UIImage?).self) { group in
            for meal in meals {
                group.addTask {
                    let image = try? await self.httpClient.downloadImage(urlString: meal.strMealThumb)
                    return (meal.id, image)
                }
            }
            
            for await (id, image) in group {
                if let image = image {
                    DispatchQueue.main.async {
                        self.thumbnails[id] = image
                    }
                } else {
                    print("⚠️ Failed to load image for meal ID: \(id)")
                }
            }
        }
    }
    
    // MARK: - INITIALIZE DATA
    func initializeDataIfNeeded() async throws {
        if (meals.isEmpty) {
            try await fetchMeals()
            try await downloadImages()
        }
        if (thumbnails.count != meals.count) {
            try await downloadImages()
        }
    }
}
