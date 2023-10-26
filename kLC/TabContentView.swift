//
//  TabContentView.swift
//  kLC
//
//  Created by Wesley Brito on 26/10/23.
//

import SwiftUI

struct TabContentView: View {
    @State var selectedTab: Int = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            UserListView()
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Favorites")
                }.tag(0)
            
            Text("Recents")
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("Recents")
                }.tag(1)
            
            UserDetailView()
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text("Contacts")
                }.tag(1)
        }
    }
}

#Preview {
    TabContentView()
}
