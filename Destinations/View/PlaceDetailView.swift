//
//  PlaceDetailView.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

struct PlaceDetailView: View {
    @EnvironmentObject var places: LoadPlaces
    var place: Place
    
    var placeIndex: Int {
        places.data.firstIndex(where: { $0.pageid == place.pageid })!
    }
    
    var body: some View {
        HStack {
            Text(place.title)
            VisitedButton(haveVisited: $places.data[placeIndex].visited)
        }
        
    }
}

struct PlaceDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlaceDetailView(place: LoadPlaces().data[0])
            .environmentObject(LoadPlaces())
    }
}
