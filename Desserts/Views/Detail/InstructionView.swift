//
//  InstructionView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct InstructionView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
        VStack {
            HStack {
                Text("How to make \(recipe.strMeal):")
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                    .underline()
                    .foregroundColor(.black)
                    .shadow(color: CustomColor.lightPurple, radius: 5, x: 5, y: 5)
                Spacer()
            } //: HSTACK
            .padding(.vertical, 5)
            Text(recipe.strInstructions)
                .font(.system(size: 20, weight: .regular, design: .rounded))
                .foregroundColor(CustomColor.darkGray)
                .multilineTextAlignment(.leading)
        } //: VSTACK
    }
}

    // MARK: - PREVIEW
struct InstructionView_Previews: PreviewProvider {
    static var previews: some View {
        InstructionView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
