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
        List(viewModel.landMarks) { landmark in
            LandmarkRow(viewModel: .init(selectedLandmark: landmark))
        }
        .background(.pink)
        .scrollContentBackground(.hidden)
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
