//
//  ContentView.swift
//  Desserts
//
//  Created by Eric Burrell on 5/14/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
            Button(action: {
                Task {
                    do {
                        let thing: [meal] = try await HttpClient().fetch(urlString: "http://abc.go.com/%")
                        print(thing)
                    } catch {
                        print(error)
                    }
                }
            }, label: { Text("Button") })
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
