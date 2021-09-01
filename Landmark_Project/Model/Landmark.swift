//
//  Landmark.swift
//  Landmark_Project
//
//  Created by Vũ Đăng Khoa on 24/07/2021.
//  Copyright © 2021 Vũ Đăng Khoa. All rights reserved.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var state: String
    var isFavorite: Bool
    var city: String
    var isFeatured: Bool
    
    var category: Category
    enum Category: String, CaseIterable, Codable {
        case Skyscraper = "Skyscraper"
        case publicUniversity = "Public University"
        case postOffice = "Post office"
        case museum = "Museum"
        case booktore = "Bookstore"
    }
    
    var description: String
    
    //make it private 'cause it only use in the image prop bellow
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var latitude: Double
        var longitude: Double
    }
}
