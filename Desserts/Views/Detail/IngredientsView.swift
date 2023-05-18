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

    // MARK: - BODY
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Ingredients:")
                    .font(.system(size: 18, weight: .semibold, design: .default))
                    .underline()
                    .foregroundColor(.black)
                    .shadow(color: CustomColor.lightPurple.opacity(0.5), radius: 5, x: 5, y: 5)
                    .padding(.vertical, 5)
                
                ForEach(recipe.ingredients.indices, id: \.self) { index in
                    HStack {
                        Text(recipe.ingredients[index])
                            .foregroundColor(CustomColor.darkGray)
                        Spacer()
                        if (index < recipe.measurements.count) {
                            Text(recipe.measurements[index])
                                .foregroundColor(CustomColor.darkGray)
                        }
                    } //: HSTACK
                } //: LOOP
            } //: VSTACK
            .frame(width: screenWidth * 0.75)
            Spacer()
        }
        .padding(.horizontal)
        .padding(.bottom)
    }
}

    // MARK: - PREVIEW
struct IngredientsView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientsView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
    }
}
