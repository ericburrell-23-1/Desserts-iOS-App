//
//  RecipeDetailView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct RecipeDetailView: View {
    // MARK: - PROPERTIES
    @StateObject var recipeViewModel: RecipeViewModel
    
    // MARK: - INIT
    init(idMeal: String) {
        _recipeViewModel = StateObject(wrappedValue: RecipeViewModel(mealId: idMeal))
    }

    // MARK: - BODY
    var body: some View {
        ZStack {
            if let recipe = recipeViewModel.recipe {
                    VStack {
                        ScrollView {
                            ThumbnailView(recipe: recipe)
                            
                            TitleView(recipe: recipe)
                            
                            IngredientsView(recipe: recipe)
                            
                            InstructionView(recipe: recipe)
                            
                            YoutubeVideoView(recipe: recipe)
                            
                            SourceView(recipe: recipe)
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
