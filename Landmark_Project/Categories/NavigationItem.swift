//
//  NavigationItem.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 28/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct NavigationItem: View {
    
    var landmark: Landmark
    
    var body: some View {
        VStack(alignment: .leading) {
            landmark.image
                .resizable()
                .renderingMode(.original)
                .frame(width: 180, height: 180)
                .cornerRadius(5)
            Text(landmark.name)
                .frame(width: 180)
                .foregroundColor(.primary)
        }.padding(.leading, 15)
    }
}

struct NavigationItem_Previews: PreviewProvider {
    static var previews: some View {
        
        NavigationItem(landmark: ModelData().landmarks[4])
    }
}
