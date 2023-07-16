//
//  LandmarkList.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import SwiftUI

struct LandmarkList: View {
    let viewModel: LandmarkListViewModel = .init()

    var body: some View {
        NavigationView {
            List(viewModel.landMarks) { item in
                NavigationLink {
                    LandmarkDetail(viewModel: .init(selectedLandMark: item))
                } label: {
                    LandmarkRow(viewModel: .init(selectedLandmark: item))
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
