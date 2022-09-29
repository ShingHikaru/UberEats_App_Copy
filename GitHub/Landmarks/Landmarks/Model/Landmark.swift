//
//  Landmark.swift
//  Landmarks
//
//  Created by Hikaru Shing on 2022/06/05.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable,Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coodinates: Coordinates
    var LocationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coodinates.lattitude,
            longitude: coodinates.longitude)
    }
    
    struct Coordinates: Hashable, Codable {
        var lattitude: Double
        var longitude: Double
    }
    
    
}

