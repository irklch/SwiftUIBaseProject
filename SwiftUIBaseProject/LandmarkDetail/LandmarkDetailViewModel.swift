//
//  LandmarkDetailViewModel.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import Foundation

struct LandmarkDetailViewModel {
    let selectedLandMark: Landmark
    let circleImageViewModel: CircleImageViewModel
    let mapViewModel: MapViewModel

    init(selectedLandMark: Landmark) {
        self.selectedLandMark = selectedLandMark
        self.circleImageViewModel = .init(imageName: selectedLandMark.imageName)
        self.mapViewModel = .init(coordinates: selectedLandMark.coordinates)
    }
}
