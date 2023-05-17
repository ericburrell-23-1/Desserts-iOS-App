//
//  MealListView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/16/23.
//

import SwiftUI

struct MealListView: View {
    // MARK: - PROPERTIES
    @StateObject var mealList = mealListViewModel.shared

    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(mealList.meals) { meal in
                    NavigationLink(destination: { RecipeDetailView(idMeal: meal.idMeal) },
                                   label: {
                        MealItemView(meal: meal, thumbnail: mealList.thumbnails[meal.id])
                    }) //: LINK
                } //: LOOP
            } //: LIST
            .task {
                do {
                    if (mealList.meals.count == 0) {
                        try await mealList.fetchMeals()
                    }
                    if (mealList.thumbnails.count != mealList.meals.count) {
                        try await mealList.downloadImages()
                    }
                } catch {
                    print("Failed to fetch meals: \(error)")
                }
            }
        } //: NAVIGATION
    }
}

    // MARK: - PREVIEW
struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
            .previewDevice("iPhone 14")
    }
}
