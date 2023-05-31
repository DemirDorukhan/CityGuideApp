//
//  CityCategoryRow.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct CityCategoryRow: View {
    
    var categoryName : String
    var items : [City]
    
    var body: some View {
        VStack(alignment : .leading) {
            Text(categoryName)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
                .padding(.bottom, -10)
            
            ScrollView(.horizontal, showsIndicators: false){
                HStack(alignment: .top, spacing: 0) {
                    ForEach(items) { item in
                        NavigationLink {
                            CityDetail(city: item)
                        }label: {
                            CityCategoryItem(city: item)
                        }
                    }
                }
                .padding()
            }
        }
    }
}

struct CityCategoryRow_Previews: PreviewProvider {
    
    static var cities = ModelData().cities
    
    static var previews: some View {
        CityCategoryRow(categoryName: cities[6].category.rawValue, items: Array(cities.prefix(7)))
    }
}
