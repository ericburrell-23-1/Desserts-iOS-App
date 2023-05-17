@_private(sourceFile: "ContentView.swift") import Desserts
import SwiftUI
import SwiftUI

extension ContentView_Previews {
    @_dynamicReplacement(for: previews) private static var __preview__previews: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/ContentView.swift", line: 20)
        ContentView()
    
#sourceLocation()
    }
}

extension ContentView {
    @_dynamicReplacement(for: body) private var __preview__body: some View {
        #sourceLocation(file: "/Users/ericburrell/Desktop/Programming/InterviewProjects/Fetch/Desserts/Desserts/ContentView.swift", line: 12)
        VStack {
            MealListView()
        }
    
#sourceLocation()
    }
}

import struct Desserts.ContentView
import struct Desserts.ContentView_Previews
