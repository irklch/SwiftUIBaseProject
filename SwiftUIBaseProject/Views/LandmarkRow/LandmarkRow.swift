//
//  LandmarkRow.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import SwiftUI

struct LandmarkRow: View {
    let viewModel: LandmarkRowViewModel

    var body: some View {
        HStack {
            viewModel.selectedLandmark.image
                .resizable()
                .frame(width: 50.0, height: 50.0)
            Text(viewModel.selectedLandmark.name)
            Spacer()
        }
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static let landmarks: [Landmark] = NetworkManager.setLoadData(from: "landmarkData.json") ?? []
    static var previews: some View {
        Group {
            LandmarkRow(viewModel: .init(selectedLandmark: landmarks[0]))
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
