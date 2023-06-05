//
//  ListView.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import SwiftUI

struct ListView: View {
    
    var place: Place
    
    var body: some View {
        VStack {
            HStack {
                Text(place.title)
                    .font(.title)
                    .padding(.leading, 10)
                    .padding(.bottom, 1)
                Spacer()
                Button {} label: {
                    Label("View Place", systemImage: "arrow.forward")
                        .labelStyle(.iconOnly)
                        .font(.title)
                        .foregroundColor(.black)
                }
                .padding(.trailing, 10)
            }
            BeautyPic(image: Image(place.image))
        }
        .padding(10)
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(place: LoadPlaces().data[0])
            .previewLayout(.fixed(width: 300, height: 250))
    }
}
