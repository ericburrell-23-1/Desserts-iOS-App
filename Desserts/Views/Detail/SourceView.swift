//
//  SourceView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/18/23.
//

import SwiftUI

struct SourceView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
        HStack {
            Spacer()
            if let urlString = recipe.strSource, let url = URL(string: urlString) {
                Link("Find full recipe here 😄", destination: url)
                    .font(.footnote)
                    .foregroundColor(.accentColor)
            }
        } //: HSTACK
        .padding()
    }
}

    // MARK: - PREVIEW
struct SourceView_Previews: PreviewProvider {
    static var previews: some View {
        SourceView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
