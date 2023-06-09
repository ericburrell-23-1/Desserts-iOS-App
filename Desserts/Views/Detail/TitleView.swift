//
//  TitleView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct TitleView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
        HStack {
            Text(recipe.mealName)
                .font(.system(size: 36, weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .shadow(color: CustomColor.lightPurple.opacity(0.5), radius: 8, x: 5, y: 5)
                .padding(.horizontal)
                .padding(.bottom)
            
            Spacer()
        }
    } //: HSTACK
}

    // MARK: - PREVIEW
struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
