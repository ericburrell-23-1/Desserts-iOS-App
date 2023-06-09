@_private(sourceFile: "TitleView.swift") import Desserts
import SwiftUI
import SwiftUI

extension TitleView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/TitleView.swift", line: 32)
        TitleView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    
#sourceLocation()
    }
}

extension TitleView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/TitleView.swift", line: 16)
        HStack {
            Text(recipe.strMeal)
                .font(.system(size: __designTimeInteger("#1818.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 36), weight: .bold, design: .rounded))
                .foregroundColor(.black)
                .shadow(color: CustomColor.lightPurple.opacity(__designTimeFloat("#1818.[1].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)), radius: __designTimeInteger("#1818.[1].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[1].value", fallback: 8), x: __designTimeInteger("#1818.[1].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[2].value", fallback: 5), y: __designTimeInteger("#1818.[1].[1].property.[0].[0].arg[0].value.[0].modifier[2].arg[3].value", fallback: 5))
                .padding(.horizontal)
                .padding(.bottom)
            
            Spacer()
        }
    
#sourceLocation()
    }
}

import struct Desserts.TitleView
import struct Desserts.TitleView_Previews
