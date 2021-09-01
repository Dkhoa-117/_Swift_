//
//  SwiftUIView.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 24/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct SwiftUIView: View {
    var landmark: Landmark
    var body: some View {
        HStack {
            landmark.image.resizable().frame(width: 50, height: 50)
            Text(landmark.name)
            Spacer()
            
            if landmark.isFavorite {
                Image(systemName: "heart.fill")
                    .padding()
                    .foregroundColor(.red)
            }
            
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var landmarks = ModelData().landmarks
    static var previews: some View {
        
        SwiftUIView(landmark: landmarks[0])
    }
}
