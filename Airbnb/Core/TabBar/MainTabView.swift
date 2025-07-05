//
//  MainTabView.swift
//  Airbnb
//
//  Created by Hittarth Goyal on 07/07/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{Label("Explore", systemImage: "magnifyingglass")}
            WishlistsView()
                .tabItem{Label("Wishlists", systemImage: "heart")}
            ProfileView()
                .tabItem{Label("Explore", systemImage: "person")}
        }
    }
}

#Preview {
    MainTabView()
}
