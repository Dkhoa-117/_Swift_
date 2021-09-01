//
//  Picture.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 24/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct Picture: View {
    var image: Image
    
    var body: some View {
        image
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 0.8)
    }
}

struct Picture_Previews: PreviewProvider {
    static var previews: some View {
        Picture(image: Image("uit"))
    }
}
