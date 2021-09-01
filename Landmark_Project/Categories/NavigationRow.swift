//
//  NavigationRow.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 28/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct NavigationRow: View {
    
    var categoryName: String
    var landmark: [Landmark]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text(categoryName)
                .font(.headline)
                .padding(.leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(landmark) { landmark in
                        NavigationLink(destination: LandmarkDetail(landmark: landmark)){
                            NavigationItem(landmark: landmark)
                        }
                    }
                }.frame(height: 240)
            }
        }
    }
}

struct NavigationRow_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        NavigationRow(categoryName: "Skycraper", landmark: landmarks)
    }
}
