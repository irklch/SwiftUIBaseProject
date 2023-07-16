//
//  LandmarkListViewModel.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import Foundation

struct LandmarkListViewModel {
    let landMarks: [Landmark] = NetworkManager.setLoadData(from: Self.landmarkJsonPath) ?? []
}
