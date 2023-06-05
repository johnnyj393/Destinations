//
//  DestinationsView.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

struct DestinationsView: View {
    var visited: Bool
    var title: String {
        visited ? "Destinations" : "Visited"
    }
    
    @EnvironmentObject var places: LoadPlaces
    
    var destinations: [Place] {
        places.data.filter { place in
            // Destinations are places NOT visited yet
            visited != place.visited
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                ForEach(destinations, id: \.pageid) { place in
                    NavigationLink {
                        PlaceDetailView(place: place)
                    } label: {
                        ListView(place: place)
                    }
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle(title)
            .toolbar {
                Button(action: {}) {
                    Image(systemName: "plus")
                }
            }
        }
    }
}

struct DestinationsView_Previews: PreviewProvider {
    static var previews: some View {
        DestinationsView(visited: true)
            .environmentObject(LoadPlaces())
    }
}
