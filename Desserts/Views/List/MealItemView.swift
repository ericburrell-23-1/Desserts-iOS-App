//
//  MealItemView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/16/23.
//

import SwiftUI

struct MealItemView: View {
    // MARK: - PROPERTIES
    let meal: Meal
    let thumbnail: UIImage?

    // MARK: - BODY
    var body: some View {
        ZStack {
            HStack {
                ((thumbnail != nil) ?
                Image(uiImage: thumbnail!) :
                Image(systemName: "birthday.cake"))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .frame(width: screenWidth * 0.25)
                
                Text(meal.strMeal)
                    .font(.system(size: 30, weight: .bold, design: .monospaced))
                    .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    .padding(.horizontal, 5)
                
                Spacer()
            } //: HSTACK
        } //: ZSTACK
    }
}

    // MARK: - PREVIEW
struct MealItemView_Previews: PreviewProvider {
    static var previews: some View {
        MealItemView(meal: sampleMeal, thumbnail: UIImage(named: "sampleThumbnail"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
