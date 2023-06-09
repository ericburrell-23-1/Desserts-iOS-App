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
                (thumbnail.map(Image.init) ?? .init(systemName: "birthday.cake"))
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .frame(maxWidth: screenWidth * 0.25)
                
                Text(meal.strMeal)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                    .shadow(color: CustomColor.lightPink.opacity(0.3), radius: 5, x: 3, y: 3)
                    .padding(.horizontal, 5)
                
                Spacer()
            } //: HSTACK
        } //: ZSTACK
    }
}

    // MARK: - PREVIEW
struct MealItemView_Previews: PreviewProvider {
    static var previews: some View {
        MealItemView(meal: PreviewItems.sampleMeal, thumbnail: UIImage(named: "sampleThumbnail"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
