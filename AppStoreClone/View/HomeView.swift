//
//  HomeView.swift
//  AppStoreClone
//
//  Created by Maxime Point on 08/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        TabView{
            TodayView()
                .tabItem {Label("Aujourd'hui", systemImage: "doc.text.image")}
            Text("Jeux")
                .tabItem {Label("Jeux", systemImage: "gamecontroller.fill")}
            Text("Apps")
                .tabItem {Label("Apps", systemImage: "apps.iphone")}
            Text("Arcade")
                .tabItem {Label("Arcade", systemImage: "mappin.and.ellipse")}
            Text("Recherche")
                .tabItem {Label("Recherche", systemImage: "magnifyingglass")}
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    
    static var previews: some View {
        HomeView()
    }
}
