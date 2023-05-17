//
//  RecipeDetailView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    let idMeal: String
    @StateObject var recipeViewModel = RecipeViewModel.shared

    // MARK: - BODY
    var body: some View {
        ZStack {
                if (recipeViewModel.recipe != nil &&
                    recipeViewModel.recipe.idMeal == idMeal)
                {
                    let recipe = recipeViewModel.recipe!
                    VStack {
                        ScrollView {
                            ThumbnailView(recipe: recipe)
                            TitleView(recipe: recipe)
                            InstructionView(recipe: recipe)
                                .padding(.horizontal)
                        } //: SCROLL
                        .padding(.bottom, 30)
                    } //: VSTACK
                    .frame(width: screenWidth, height: screenHeight)
                    .background {
                        CustomColor.lightGray
                    }
                } else { ProgressView() }
                
        } //: ZSTACK
        .ignoresSafeArea()
        .task {
            do {
                recipeViewModel.idMeal = idMeal
                try await recipeViewModel.fetchRecipe()
            } catch {
                print("Failed to fetch recipe: \(error)")
            }
        } //: TASK
    }
}

    // MARK: - PREVIEW
struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeDetailView(idMeal: "52893")
            .previewDevice("iPhone 14")
    }
}
