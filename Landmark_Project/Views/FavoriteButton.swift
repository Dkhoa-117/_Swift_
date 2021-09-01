//
//  FavoriteButton.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 25/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct FavoriteButton: View {
    @Binding var isSet: Bool
    
    var body: some View {
        Button(action: {
            self.isSet.toggle()
        }, label: {
            Image(systemName: isSet ? "heart.fill" : "heart")
                .foregroundColor(isSet ? .red : .gray)
            .padding()
        })
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(false))
    }
}
