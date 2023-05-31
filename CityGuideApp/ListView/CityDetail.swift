//
//  CityDetail.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct CityDetail: View {
    
    var city : City
    
    @EnvironmentObject var modelData : ModelData
    
    var cityIndex : Int {
        modelData.cities.firstIndex { $0.id == city.id }!
    }
    
    var body: some View {
        NavigationView{
            ScrollView{
                MapView(location: city.locationCoordinate)
                    .ignoresSafeArea()
                    .frame(height: 300)
                CircleImage(image: city.CityImage)
                    .offset(y : -100)
                    .padding(.bottom, -100)
                
                VStack(alignment: .leading){
                    HStack{
                        Text(city.cityName)
                            .font(.title)
                        Spacer()
                        Text(city.country)
                            .foregroundColor(.secondary)
                    }
                    Divider()
                    HStack {
                        Text("\(city.icon)")
                            .font(.title2)
                        .padding(.bottom, 2)
                        FavoriteButton(isSet: $modelData.cities[cityIndex].isFavorite)
                    }
                    Text(city.description)
                }
                .padding()
                }
            }
        }
    }


struct CityDetail_Previews: PreviewProvider {
    static var previews: some View {
        CityDetail(city: ModelData().cities[5])
            .environmentObject(ModelData())
    }
}
