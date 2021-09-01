//
//  CategoryHome.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 28/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelData: ModelData
    var body: some View {
        NavigationView {
            List {
                
                modelData.features[3].image
                    .resizable()
                    .scaledToFill()
                    .frame(height: 200)
                    .clipped() //hide beyond the clip
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    NavigationRow(categoryName: key, landmark: self.modelData.categories[key]!)
                }.listRowInsets(EdgeInsets())
                
            }.navigationBarTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome().environmentObject(ModelData())
    }
}
