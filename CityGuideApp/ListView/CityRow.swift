//
//  CityRow.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct CityRow: View {
    
    var city : City
    
    var body: some View {
        HStack{
            city.CityImage
                .resizable()
                .frame(width: 50, height: 50)
            Text(city.cityName)
            Spacer()
        }
        //.padding()
    }
}

struct CityRow_Previews: PreviewProvider {
    static var previews: some View {
        CityRow(city: ModelData().cities[4])
    }
}
