//
//  MapView.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 15.07.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    let viewModel: MapViewModel
    @State private var region: MKCoordinateRegion

    init(viewModel: MapViewModel) {
        self.viewModel = viewModel
        self.region = .init(
            center: viewModel.locationCoordinate,
            span: .init(
                latitudeDelta: 0.2,
                longitudeDelta: 0.2))
    }

    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(viewModel: .init(coordinates: LandmarkListViewModel().landMarks[3].coordinates))
    }
}
