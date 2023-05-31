//
//  MapView.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    @State private var region = MKCoordinateRegion()
    var location : CLLocationCoordinate2D
    
    var body: some View {
        Map(coordinateRegion: $region)
            .onAppear{
                setRegion(location)
            }
    }

    private func setRegion (_ coordinates : CLLocationCoordinate2D){
        region = MKCoordinateRegion(center: coordinates, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(location: CLLocationCoordinate2D(latitude: 48.858288, longitude: 2.294547))
    }
}
