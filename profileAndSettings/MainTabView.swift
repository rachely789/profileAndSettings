//
//  MainTabView.swift
//  profileAndSettings
//
//  Created by Rachel Yoon on 8/2/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
            TabView {
                
                    Text("Camera")
                        .tabItem{
                            Label("", systemImage: "camera")
                        }
                    
                    Text("Friends")
                        .tabItem{
                            Label("", systemImage: "heart")
                        }
                    
                    Text("Main Page")
                        .tabItem{
                            Label("", systemImage: "house")
                        }
        
                    ProfileView()
                        .tabItem {
                            Label("", systemImage: "person")
                        }
                        .tag("profile")
                        
                    Text("Search")
                        .tabItem{
                            Label("", systemImage: "magnifyingglass")
                        }
            }
            .accentColor(.purple)
    }
}

struct profileView: View {
    var body: some View {
        Text("Profile View")
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
