//
//  MealListView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/16/23.
//

import SwiftUI

struct MealListView: View {
    // MARK: - PROPERTIES
    @StateObject var mealListViewModel = MealListViewModel()

    // MARK: - BODY
    var body: some View {
        NavigationView {
            List {
                ForEach(mealListViewModel.meals) { meal in
                    NavigationLink(destination: { RecipeDetailView(idMeal: meal.idMeal) },
                                   label: {
                        MealItemView(meal: meal, thumbnail: mealListViewModel.thumbnails[meal.id])
                    }) //: LINK
                } //: LOOP
            } //: LIST
            .task {
                do {
                    try await mealListViewModel.initializeDataIfNeeded()
                } catch {
                    print("Failed to fetch meals: \(error)")
                }
            }
            .navigationTitle("Recipes")
        } //: NAVIGATION
    }
}

    // MARK: - PREVIEW
struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
            .previewDevice("iPad (10th generation)")
    }
}
