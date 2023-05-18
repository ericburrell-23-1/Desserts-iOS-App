@_private(sourceFile: "SourceView.swift") import Desserts
import SwiftUI
import SwiftUI

extension SourceView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/SourceView.swift", line: 31)
        SourceView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    
#sourceLocation()
    }
}

extension SourceView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/SourceView.swift", line: 16)
        HStack {
            Spacer()
            if let urlString = recipe.strSource, let url = URL(string: urlString) {
                Link(__designTimeString("#25451.[1].[1].property.[0].[0].arg[0].value.[1].[0].[0].arg[0].value", fallback: "Find full recipe here 😄"), destination: url)
                    .font(.footnote)
                    .foregroundColor(.accentColor)
            }
        } //: HSTACK
        .padding()
    
#sourceLocation()
    }
}

import struct Desserts.SourceView
import struct Desserts.SourceView_Previews
