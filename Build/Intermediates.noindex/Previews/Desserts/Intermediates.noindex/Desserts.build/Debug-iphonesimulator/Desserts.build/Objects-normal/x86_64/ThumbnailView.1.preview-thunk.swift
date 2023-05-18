@_private(sourceFile: "ThumbnailView.swift") import Desserts
import SwiftUI
import SwiftUI

extension ThumbnailView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/ThumbnailView.swift", line: 42)
        ThumbnailView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    
#sourceLocation()
    }
}

extension ThumbnailView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/ThumbnailView.swift", line: 16)
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
                        .scaleEffect(__designTimeFloat("#16453.[1].[1].property.[0].[0].arg[0].value.[1].[0].[0].arg[0].value.[1].modifier[1].arg[0].value", fallback: 0.8), anchor: .topTrailing)
                        .foregroundColor(.gray)
                } //: HSTACK
            } //: CONDITIONAL
        } //: VSTACK
    
#sourceLocation()
    }
}

import struct Desserts.ThumbnailView
import struct Desserts.ThumbnailView_Previews
