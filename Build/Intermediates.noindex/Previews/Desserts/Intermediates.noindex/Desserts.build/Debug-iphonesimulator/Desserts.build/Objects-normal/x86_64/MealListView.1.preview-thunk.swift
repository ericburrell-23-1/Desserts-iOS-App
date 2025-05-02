@_private(sourceFile: "MealListView.swift") import Desserts
import SwiftUI
import SwiftUI

extension MealListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/MealListView.swift", line: 40)
        MealListView()
            .previewDevice(__designTimeString("#2309.[2].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "iPad (10th generation)"))
    
#sourceLocation()
    }
}

extension MealListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/MealListView.swift", line: 16)
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
            .navigationTitle(__designTimeString("#2309.[1].[1].property.[0].[0].arg[0].value.[0].modifier[1].arg[0].value", fallback: "Recipes"))
        } //: NAVIGATION
    
#sourceLocation()
    }
}

import struct Desserts.MealListView
import struct Desserts.MealListView_Previews
