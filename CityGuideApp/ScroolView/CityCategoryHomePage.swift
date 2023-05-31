//
//  CityCategoryHomePage.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct CityCategoryHomePage: View {
    
    @EnvironmentObject var modelData : ModelData
    
    var body: some View {
        NavigationView{
            List{
                ForEach(modelData.categories.keys.sorted(), id : \.self) { key in
                    CityCategoryRow(categoryName: key, items: modelData.categories[key]!)
                }
            }
            .navigationTitle("City Guide")
        }
        
    }
}

struct CityCategoryHomePage_Previews: PreviewProvider {
    static var previews: some View {
        CityCategoryHomePage()
            .environmentObject(ModelData())
    }
}
