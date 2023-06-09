@_private(sourceFile: "InstructionView.swift") import Desserts
import SwiftUI
import SwiftUI

extension InstructionView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/InstructionView.swift", line: 38)
        InstructionView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            
    
#sourceLocation()
    }
}

extension InstructionView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/InstructionView.swift", line: 16)
        VStack {
            HStack {
                Text("How to make \(recipe.strMeal):")
                    .font(.system(size: __designTimeInteger("#1872.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[0].arg[0].value.arg[0].value", fallback: 24), weight: .bold, design: .rounded))
                    .underline()
                    .foregroundColor(.black)
                    .shadow(color: CustomColor.lightPurple.opacity(__designTimeFloat("#1872.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)), radius: __designTimeInteger("#1872.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[1].value", fallback: 5), x: __designTimeInteger("#1872.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[2].value", fallback: 5), y: __designTimeInteger("#1872.[1].[1].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[3].value", fallback: 5))
                Spacer()
            } //: HSTACK
            .padding(.vertical, __designTimeInteger("#1872.[1].[1].property.[0].[0].arg[0].value.[0].modifier[0].arg[1].value", fallback: 5))
            Text(recipe.strInstructions)
                .font(.system(size: __designTimeInteger("#1872.[1].[1].property.[0].[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 20), weight: .regular, design: .rounded))
                .foregroundColor(CustomColor.darkGray)
                .multilineTextAlignment(.leading)
        } //: VSTACK
        .padding(.horizontal)
    
#sourceLocation()
    }
}

import struct Desserts.InstructionView
import struct Desserts.InstructionView_Previews
