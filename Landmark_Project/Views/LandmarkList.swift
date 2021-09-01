//
//  LandmarkList.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 24/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    @State var showFavoriteOnly = false
    @EnvironmentObject var modelData: ModelData
    
    var filteredLandmark: [Landmark] {
        modelData.landmarks.filter { landmarks in
            //hay!!!
            (!showFavoriteOnly || landmarks.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoriteOnly) {
                    Text("Show Favorite Only")
                }
                ForEach(filteredLandmark) {
                    landmark in
                    NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
                        SwiftUIView(landmark: landmark)
                    }
                }
            }.navigationBarTitle("Landmarks")
        }

    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList().environmentObject(ModelData())
    }
}
