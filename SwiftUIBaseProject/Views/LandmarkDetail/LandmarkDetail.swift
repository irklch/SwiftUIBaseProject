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
                    Text(Titles.about + .space + viewModel.selectedLandMark.name)
                        .font(.title2)
                    Text(viewModel.selectedLandMark.description)
                }
                .padding()
                Spacer()
            }
        }
        .scrollIndicators(.hidden)
        .navigationTitle(viewModel.selectedLandMark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let devices = [Devices.iPhoneSE1ndGeneration, Devices.iPhone14Pro]
        ForEach(devices, id: \.self) { deviceName in
            LandmarkDetail(viewModel: .init(selectedLandMark: LandmarkListViewModel().landMarks[3]))
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
