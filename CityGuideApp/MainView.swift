//
//  ContentView.swift
//  CityGuideApp
//
//  Created by Dorukhan Demir on 30.05.2023.
//

import SwiftUI

struct MainView: View {

    enum Tab {
        case scrool
        case list
    }
    
    @State private var selection = Tab.scrool
    
    var body: some View {
        
        TabView(selection: $selection) {
            CityCategoryHomePage()
                .tabItem {
                    Label("Grid", systemImage: "star")
                }
                .tag(Tab.scrool)
            CityList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
            .environmentObject(ModelData())
    }
}
