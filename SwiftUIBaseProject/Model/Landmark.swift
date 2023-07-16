//
//  Landmark.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 15.07.2023.
//

import Foundation
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var imageName: String
    var coordinates: Coordinates
}
