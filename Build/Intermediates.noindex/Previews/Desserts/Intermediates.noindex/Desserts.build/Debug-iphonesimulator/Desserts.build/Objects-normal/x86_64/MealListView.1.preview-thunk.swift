@_private(sourceFile: "MealListView.swift") import Desserts
import SwiftUI
import SwiftUI

extension MealListView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/MealListView.swift", line: 40)
        MealListView()
            .previewDevice(__designTimeString("#10465.[2].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "iPhone 14"))
    
#sourceLocation()
    }
}

extension MealListView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/MealListView.swift", line: 17)
        NavigationView {
            List {
                ForEach(mealList.meals) { meal in
                    MealItemView(meal: meal, thumbnail: mealList.thumbnails[meal.id])
                } //: LOOP
            } //: LIST
            .task {
                do {
                    try await mealList.fetchMeals()
                    try await mealList.downloadImages()
                    //reloadNeeded = false
                } catch {
                    print("Failed to fetch meals: \(error)")
                    //reloadNeeded = true
                }
            }
        } //: NAVIGATION
    
#sourceLocation()
    }
}

import struct Desserts.MealListView
import struct Desserts.MealListView_Previews
