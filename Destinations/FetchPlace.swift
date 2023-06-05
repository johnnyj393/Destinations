//
//  FetchPlace.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

//import Foundation
//
//struct FetchPlace {
//
//    let city = "Taiwan"
//
//    var placeURL: String {
//        "https://en.wikipedia.org/w/api.php?action=query&format=json&prop=description&titles="+city+"&formatversion=2"
//    }
//
//    func fetch() {
//        // Make url
//        guard let url = URL(string: placeURL) else {
//            return
//        }
//
//        // Perform URL session
//        let task = URLSession.shared.dataTask(with: url) { data, _, error in
//            guard let data = data, error == nil else {
//                return
//            }
//
//            // Convert to JSON using struct "Place"
//            do {
//                let newPlace = try JSONDecoder().decode([Place].self, from: data)
//            } catch {
//                print(error)
//            }
//
//        }
//        task.resume()
//    }
//}
