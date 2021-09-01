//
//  LandmarkDetail.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 24/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import SwiftUI
import MapKit
struct LandmarkDetail: View {
    var landmark: Landmark
    @EnvironmentObject var modelData: ModelData
    
    var landmarkIndex: Int {
        //return the first id that satisfies the given predicate
        modelData.landmarks.firstIndex(where: {$0.id == landmark.id})!
    }
    var body: some View {
        ScrollView {
            MapView(landmark: landmark)
                .frame(height: 400)
                .edgesIgnoringSafeArea(.top)
            Picture(image: landmark.image).padding(.bottom, -130).offset(y: -130)
            VStack(alignment: .leading) {
                
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.category.rawValue).font(.subheadline)
                    Spacer()
                    Text(landmark.state + ", " + landmark.city).font(.subheadline)
                }
                Divider()
                
                Text("About the \(landmark.name)")
                    .font(.headline)
                Text(landmark.description)
            }.padding()

            }.navigationBarTitle(landmark.name)
    }
}
struct MapView: UIViewRepresentable {
    typealias UIViewType = MKMapView
    var landmark: Landmark
    
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        let region = MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: landmark.locationCoordinate.latitude, longitude: landmark.locationCoordinate.longitude),
            span: MKCoordinateSpan(latitudeDelta: 0.003, longitudeDelta: 0.003))
        mapView.setRegion(region, animated: true)
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
    }
}
struct LandmarkDetail_Previews: PreviewProvider {

    static var previews: some View {
        LandmarkDetail(landmark: ModelData().landmarks[0]).environmentObject(ModelData())
    }
}
