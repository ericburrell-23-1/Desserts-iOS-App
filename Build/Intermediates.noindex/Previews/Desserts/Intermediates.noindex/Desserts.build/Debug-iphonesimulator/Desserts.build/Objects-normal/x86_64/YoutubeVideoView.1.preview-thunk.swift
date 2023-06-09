@_private(sourceFile: "YoutubeVideoView.swift") import Desserts
import SwiftUI
import SwiftUI

extension YoutubeVideoView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/YoutubeVideoView.swift", line: 36)
        YoutubeVideoView(recipe: PreviewItems.sampleRecipe)
            .previewLayout(.sizeThatFits)
            .padding()
    
#sourceLocation()
    }
}

extension YoutubeVideoView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/Views/Detail/YoutubeVideoView.swift", line: 16)
        VStack {
            if let youtubeVideoID = recipe.youtubeVideoID, let _ = URL(string: recipe.strYoutube) != nil {
                Text(__designTimeString("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0].arg[0].value", fallback: "Visual learner? Here's a video to help you learn more!"))
                    .font(.system(size: __designTimeInteger("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0].modifier[0].arg[0].value.arg[0].value", fallback: 18), weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                    .shadow(color: CustomColor.lightPurple.opacity(__designTimeFloat("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0].modifier[2].arg[0].value.modifier[0].arg[0].value", fallback: 0.5)), radius: __designTimeInteger("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0].modifier[2].arg[1].value", fallback: 5), x: __designTimeInteger("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0].modifier[2].arg[2].value", fallback: 5), y: __designTimeInteger("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[0].modifier[2].arg[3].value", fallback: 5))
                    .padding(.top)
                
                YoutubeVideoPlayer(youtubeVideoID: youtubeVideoID)
                    .scaledToFit()
                    .frame(width: screenWidth * __designTimeFloat("#2004.[1].[1].property.[0].[0].arg[0].value.[0].[0].[1].modifier[1].arg[0].value.[0]", fallback: 0.8))
            }
        } //: VSTACK
        .padding()
    
#sourceLocation()
    }
}

import struct Desserts.YoutubeVideoView
import struct Desserts.YoutubeVideoView_Previews
