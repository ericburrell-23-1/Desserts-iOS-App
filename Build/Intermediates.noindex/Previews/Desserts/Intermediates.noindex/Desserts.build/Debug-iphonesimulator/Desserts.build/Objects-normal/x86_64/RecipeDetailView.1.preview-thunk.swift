@_private(sourceFile: "RecipeDetailView.swift") import Desserts
import SwiftUI
import SwiftUI

extension RecipeDetailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/RecipeDetailView.swift", line: 59)
        RecipeDetailView(idMeal: __designTimeString("#1790.[2].[0].property.[0].[0].arg[0].value", fallback: "52893"))
            .previewDevice(__designTimeString("#1790.[2].[0].property.[0].[0].modifier[0].arg[0].value", fallback: "iPhone 14"))
    
#sourceLocation()
    }
}

extension RecipeDetailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/RecipeDetailView.swift", line: 17)
        ZStack {
                if (recipeViewModel.recipe != nil &&
                    recipeViewModel.recipe.idMeal == idMeal)
                {
                    let recipe = recipeViewModel.recipe!
                    VStack {
                        ScrollView {
                            ThumbnailView(recipe: recipe)
                            
                            TitleView(recipe: recipe)
                            
                            IngredientsView(recipe: recipe)
                            
                            InstructionView(recipe: recipe)
                            
                            YoutubeVideoView(recipe: recipe)
                            
                            SourceView(recipe: recipe)
                        } //: SCROLL
                        .padding(.bottom, __designTimeInteger("#1790.[1].[2].property.[0].[0].arg[0].value.[0].[0].[1].arg[0].value.[0].modifier[0].arg[1].value", fallback: 30))
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
    
#sourceLocation()
    }
}

import struct Desserts.RecipeDetailView
import struct Desserts.RecipeDetailView_Previews
