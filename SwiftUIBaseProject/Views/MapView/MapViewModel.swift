//
//  MapViewModel.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import Foundation
import CoreLocation

struct MapViewModel {
    let locationCoordinate: CLLocationCoordinate2D

    init(coordinates: Landmark.Coordinates) {
        self.locationCoordinate = .init(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
