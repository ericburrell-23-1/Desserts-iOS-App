//
//  ThumbnailView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct ThumbnailView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
        VStack {
            AsyncImage(url: URL(string:recipe.strMealThumb)) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
                    .foregroundColor(.black)
                    .frame(width: screenWidth, height: screenWidth)
            }
            if recipe.strImageSource != nil {
                HStack {
                    Spacer()
                    Text("Image via \(recipe.strImageSource!)")
                        .font(.footnote)
                        .scaleEffect(0.8, anchor: .topTrailing)
                        .foregroundColor(.gray)
                } //: HSTACK
            } //: CONDITIONAL
        } //: VSTACK
    }
}

    // MARK: - PREVIEW
struct ThumbnailView_Previews: PreviewProvider {
    static var previews: some View {
        ThumbnailView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
