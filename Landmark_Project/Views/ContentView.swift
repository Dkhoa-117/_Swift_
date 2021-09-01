//
//  ContentView.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 24/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured
    enum Tab {
        case featured
        case list
    }
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome().tabItem({
                Image(systemName: "star")
                Text("Featured")
                
            })
                .tag(Tab.featured)
            LandmarkList()
            .tabItem({
                Image(systemName: "list.bullet")
                Text("List")
            })
                .tag(Tab.list)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(ModelData())
    }
}


