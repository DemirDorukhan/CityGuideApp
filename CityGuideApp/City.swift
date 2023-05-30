//
//  City.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

/*
 "city": "Paris",
 "category": "Capital",
 "country": "France",
 "id": 1001,
 "isFavorite": true,
 "icon": "Eiffel",
 "coordinates": {
     "longitude": 48.858288,
     "latitude": 2.294547
 },
 "description": "Adipiscing elite esse cillum dolore eu, dolor ipsum sit , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ad minim veniam, quis nostrud  aliquip ex ea commodo amet consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu exercitation lorem ullamco laboris nisi ut fugiat nulla pariatur reprehenderit in voluptate. Excepteur sint occaecat enim cupidatat non proident, sunt in culpa qui anim id est laborum officia deserunt mollit. Adipiscing elite esse cillum dolore eu, dolor ipsum sit , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ad minim veniam, quis nostrud  aliquip ex ea commodo amet consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu exercitation lorem ullamco laboris nisi ut fugiat nulla pariatur reprehenderit in voluptate. Excepteur sint occaecat enim cupidatat non proident, sunt in culpa qui anim id est laborum officia deserunt mollit. Adipiscing elite esse cillum dolore eu, dolor ipsum sit , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut ad minim veniam, quis nostrud  aliquip ex ea commodo amet consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu exercitation lorem ullamco laboris nisi ut fugiat nulla pariatur reprehenderit in voluptate. Excepteur sint occaecat enim cupidatat non proident, sunt in culpa qui anim id est laborum officia deserunt mollit.",
 "imageName": "Eiffel"
},
 */

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
            
            var cityImage : Image {
                Image(imageName)
            }
    
}
