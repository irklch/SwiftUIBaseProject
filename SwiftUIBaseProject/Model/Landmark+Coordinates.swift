//
//  Landmark+Coordinates.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import Foundation

extension Landmark {
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
