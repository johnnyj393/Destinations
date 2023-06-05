//
//  Place.swift
//  Destinations
//
//  Created by John Santangelo on 2023/6/4.
//

import Foundation
import SwiftUI

struct Place: Hashable, Codable {
    
    var pageid: Int
    var title: String
    var description: String
    var visited: Bool
    var image: String
    
}
