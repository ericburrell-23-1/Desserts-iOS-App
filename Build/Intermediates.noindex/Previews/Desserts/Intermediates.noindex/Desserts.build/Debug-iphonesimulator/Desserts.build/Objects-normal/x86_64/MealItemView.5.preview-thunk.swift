@_private(sourceFile: "MealItemView.swift") import Desserts
import SwiftUI
import SwiftUI

extension MealItemView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/List/MealItemView.swift", line: 41)
        __designTimeSelection(MealItemView(meal: __designTimeSelection(PreviewItems.sampleMeal, "#2105.[2].[0].property.[0].[0].arg[0].value"), thumbnail: __designTimeSelection(UIImage(named: __designTimeString("#2105.[2].[0].property.[0].[0].arg[1].value.arg[0].value", fallback: "sampleThumbnail")), "#2105.[2].[0].property.[0].[0].arg[1].value"))
            .previewLayout(.sizeThatFits)
            .padding(), "#2105.[2].[0].property.[0].[0]")
    
#sourceLocation()
    }
}

extension MealItemView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/List/MealItemView.swift", line: 17)
        __designTimeSelection(ZStack {
            __designTimeSelection(HStack {
                ((thumbnail != nil) ?
                __designTimeSelection(Image(uiImage: thumbnail!), "#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].[0].then") :
                __designTimeSelection(Image(systemName: __designTimeString("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].[0].else.arg[0].value", fallback: "birthday.cake")), "#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].[0].else"))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(__designTimeInteger("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[2].arg[0].value", fallback: 12))
                    .frame(maxWidth: screenWidth * __designTimeFloat("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[0].modifier[3].arg[0].value.[0]", fallback: 0.25))
                
                __designTimeSelection(Text(__designTimeSelection(meal.strMeal, "#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].arg[0].value"))
                    .font(.system(size: __designTimeInteger("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[0].arg[0].value.arg[0].value", fallback: 30), weight: .bold, design: .rounded))
                    .shadow(color: __designTimeSelection(CustomColor.lightPink.opacity(__designTimeFloat("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[0].value.modifier[0].arg[0].value", fallback: 0.3)), "#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[0].value"), radius: __designTimeInteger("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[1].value", fallback: 5), x: __designTimeInteger("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[2].value", fallback: 3), y: __designTimeInteger("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[1].arg[3].value", fallback: 3))
                    .padding(.horizontal, __designTimeInteger("#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1].modifier[2].arg[1].value", fallback: 5)), "#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[1]")
                
                __designTimeSelection(Spacer(), "#2105.[1].[2].property.[0].[0].arg[0].value.[0].arg[0].value.[2]")
            }, "#2105.[1].[2].property.[0].[0].arg[0].value.[0]") //: HSTACK
        }, "#2105.[1].[2].property.[0].[0]") //: ZSTACK
    
#sourceLocation()
    }
}

import struct Desserts.MealItemView
import struct Desserts.MealItemView_Previews
