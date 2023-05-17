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
    //@State var reloadNeeded: Bool = false

    // MARK: - BODY
    var body: some View {
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
    }
}

    // MARK: - PREVIEW
struct MealListView_Previews: PreviewProvider {
    static var previews: some View {
        MealListView()
            .previewDevice("iPhone 14")
    }
}
