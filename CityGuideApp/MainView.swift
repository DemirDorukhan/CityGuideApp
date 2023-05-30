//
//  ContentView.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

import SwiftUI

struct MainView: View {

    var body: some View {
        Text("Hello")
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ModelData())
    }
}
