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
            
            ProfileView(user: User.MOCK_USERS[0])
                .tabItem{
                    Label("", systemImage: "person")
                }
            
            Text("Search")
                .tabItem{
                    Label("", systemImage: "magnifyingglass")
                }
        }
        .accentColor(.purple)
    }
    
    struct MainTabView_Previews: PreviewProvider {
        static var previews: some View {
            MainTabView()
        }
    }
}
