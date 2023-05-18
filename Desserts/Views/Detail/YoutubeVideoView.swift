//
//  YoutubeVideoView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/17/23.
//

import SwiftUI

struct YoutubeVideoView: View {
    // MARK: - PROPERTIES
    let recipe: Recipe

    // MARK: - BODY
    var body: some View {
        VStack {
            if let youtubeVideoID = recipe.youtubeVideoID, let _ = URL(string: recipe.strYoutube) != nil {
                Text("Visual learner? Here's a video to help you learn more!")
                    .font(.system(size: 18, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                    .shadow(color: CustomColor.lightPurple.opacity(0.5), radius: 5, x: 5, y: 5)
                    .padding(.top)
                
                YoutubeVideoPlayer(youtubeVideoID: youtubeVideoID)
                    .scaledToFit()
                    .frame(width: screenWidth * 0.8)
            }
        } //: VSTACK
        .padding()
    }
}

    // MARK: - PREVIEW
struct YoutubeVideoView_Previews: PreviewProvider {
    static var previews: some View {
        YoutubeVideoView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
