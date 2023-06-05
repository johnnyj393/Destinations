//
//  DestinationsApp.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

@main
struct DestinationsApp: App {
    
    @StateObject private var places = LoadPlaces()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(places)
        }
    }
}
