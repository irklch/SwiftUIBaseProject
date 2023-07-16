//
//  LandmarkDetail.swift
//  SwiftUIBaseProject
//
//  Created by Ирина Кольчугина on 16.07.2023.
//

import SwiftUI

struct LandmarkDetail: View {
    let viewModel: LandmarkDetailViewModel

    var body: some View {
        ScrollView {
            VStack {
                MapView(viewModel: viewModel.mapViewModel)
                    .frame(height: 300.0)
                CircleImage(viewModel: viewModel.circleImageViewModel)
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
                    Text(viewModel.selectedLandMark.name)
                        .font(.title)
                    HStack {
                        Text(viewModel.selectedLandMark.park)
                        Spacer()
                        Text(viewModel.selectedLandMark.state)

                    }
                    .font(.subheadline)
                    Divider()
                    Text(viewModel.selectedLandMark.description)
                        .font(.title2)
                }
                .padding()
                Spacer()
            }
        }
        .ignoresSafeArea(edges: .top)
        .scrollIndicators(.hidden)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(viewModel: .init(selectedLandMark: LandmarkListViewModel().landMarks[3]))
    }
}
