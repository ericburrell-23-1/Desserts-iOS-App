@_private(sourceFile: "MealListView.swift") import Desserts
import SwiftUI
import SwiftUI

extension MealListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/MealListView.swift", line: 44)
        MealListView()
            .previewDevice(__designTimeString("#7172.[2].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "iPhone 14"))
    
#sourceLocation()
    }
}

extension MealListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/MealListView.swift", line: 16)
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
    
#sourceLocation()
    }
}

import struct Desserts.MealListView
import struct Desserts.MealListView_Previews
