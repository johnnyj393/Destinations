//
//  ContentView.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            DestinationsView(visited: true)
                .tabItem {
                    Label("Destinations", systemImage: "star")
                }
            DestinationsView(visited: false)
                .tabItem {
                    Label("Visited", systemImage: "gobackward")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(LoadPlaces())
    }
}
