//
//  LoadPlaces.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import Foundation
import Combine

final class LoadPlaces: ObservableObject {
    
    @Published var data: [Place] = load("Places.json")

}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Error in file creation")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Error in loading data")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Error in parsing data")
    }
}

