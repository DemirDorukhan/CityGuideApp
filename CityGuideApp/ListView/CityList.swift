//
//  CityList.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct CityList: View {

    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        NavigationView{
            List{
                Toggle(isOn: $modelData.showFavoritesOnly) {
                    Text("Favorites Only")
                }
                ForEach(modelData.filteredCities){city in
                    NavigationLink{
                        CityDetail(city: city)
                    }label: {
                        CityRow(city: city)
                    }
                }
            }
            .navigationTitle("City Guide")
        }
    }
}

struct CityList_Previews: PreviewProvider {
    static var previews: some View {
        CityList()
            .environmentObject(ModelData())
    }
}
