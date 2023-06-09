@_private(sourceFile: "IngredientsView.swift") import Desserts
import SwiftUI
import SwiftUI

extension IngredientsView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/IngredientsView.swift", line: 50)
        IngredientsView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
    
#sourceLocation()
    }
}

extension IngredientsView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/IngredientsView.swift", line: 16)
        HStack {
            VStack(alignment: .leading) {
                Text(__designTimeString("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].arg[0].value", fallback: "Ingredients:"))
                    .font(.system(size: __designTimeInteger("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .semibold, design: .default))
                    .underline()
                    .foregroundColor(.black)
                    .shadow(color: CustomColor.lightPurple.opacity(__designTimeFloat("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)), radius: __designTimeInteger("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[1].value", fallback: 5), x: __designTimeInteger("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[2].value", fallback: 5), y: __designTimeInteger("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[3].arg[3].value", fallback: 5))
                    .padding(.vertical, __designTimeInteger("#1394.[1].[1].property.[0].[0].arg[0].value.[0].arg[1].value.[0].modifier[4].arg[1].value", fallback: 5))
                
                ForEach(recipe.ingredients.indices, id: \.self) { index in
                    if !recipe.ingredients[index].isEmpty {
                        HStack {
                            Text(recipe.ingredients[index])
                                .foregroundColor(CustomColor.darkGray)
                            Spacer()
                            if (index < recipe.measurements.count) {
                                Text(recipe.measurements[index])
                                    .foregroundColor(CustomColor.darkGray)
                            }
                        }
                    } //: HSTACK
                } //: LOOP
            } //: VSTACK
            .frame(width: screenWidth * __designTimeFloat("#1394.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[0].value.[0]", fallback: 0.75))
            Spacer()
        }
        .padding(.horizontal)
        .padding(.bottom)
    
#sourceLocation()
    }
}

import struct Desserts.IngredientsView
import struct Desserts.IngredientsView_Previews
