//
//  CityCategoryItem.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct CityCategoryItem: View {
    
    var city : City
    
    var body: some View {
        VStack(alignment : .leading) {
            
            city.CityImage
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(10)
            
            Text(city.cityName)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 15)
    }
}

struct CityCategoryItem_Previews: PreviewProvider {
    static var previews: some View {
        CityCategoryItem(city: ModelData().cities[7])
    }
}
