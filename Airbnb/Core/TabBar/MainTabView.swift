//
//  MainTabView.swift
//  Airbnb
//
//  Created by leonardo Moreira on 26/10/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ExploreView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    
                    Text("Explore")
                }
            
            WishListsView()
                .tabItem {
                    Image(systemName: "heart")
                    
                    Text("WishListis")
                }
            
           ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    
                    Text("Perfil")
                }
        }
    }
}

#Preview {
    MainTabView()
}
