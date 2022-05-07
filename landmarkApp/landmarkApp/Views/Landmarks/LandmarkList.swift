//
//  LandmarkList.swift
//  landmarkApp
//
//  Created by Can Babaoğlu on 7.05.2022.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavorites = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter{ landmark in (!showFavorites || landmark.isFavorite)}
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavorites) {
                    Text("Show favorites only")
                }
                
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
