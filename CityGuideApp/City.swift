//
//  City.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//


import Foundation
import CoreLocation
import SwiftUI


struct City : Hashable, Codable, Identifiable {
    
    
    var city : String
    
    
            enum Category : String, CaseIterable, Codable {
                case Capital = "Capital"
                case Coastal = "Coastal"
                case Inland = "Inland"
            }
            var category : Category
        
    
    var country : String
    
    var id : Int
    
    var isFavorite : Bool
    
    var icon : String
    
    
            struct Coordinates : Hashable, Codable {
                var longitude : Double
                var latitude : Double
            }
    
            private var coordinates : Coordinates
            
            var locationCoordinate : CLLocationCoordinate2D {
                CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
            }
    
    
    var description : String
    
    
            private var imageName : String
            
            var CityImage : Image {
                Image(imageName)
            }
     
    
}
