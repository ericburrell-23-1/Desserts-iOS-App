//
//  IngredientsView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct IngredientsView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe
    let ingredientIndices = Array(1...30)

    // MARK: - BODY
    var body: some View {
        VStack {
            Text("Ingredients")
            ForEach(ingredientIndices, id: \.self) { index in
                // Text(recipe.) need to access ingredient properties of recipe
            }
        }
    }
}

    // MARK: - PREVIEW
struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
