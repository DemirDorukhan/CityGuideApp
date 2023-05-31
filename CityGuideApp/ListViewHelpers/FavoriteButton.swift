//
//  FavoriteButton.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 31.05.2023.
//

import SwiftUI

struct FavoriteButton: View {
    
    @Binding var isSet : Bool
    
    var body: some View {
        Button{
            isSet.toggle() } label: {
                Label("Favorite Button", systemImage: isSet ? "star.fill" : "star")
                    .labelStyle(.iconOnly)
                    .foregroundColor(isSet ? .yellow : .gray)
            }
        }
    }


struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
