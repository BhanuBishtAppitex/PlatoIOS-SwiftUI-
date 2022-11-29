//
//  MainTabBar.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct MainTabBar: View {
    @State var isNavigationBarHidden: Bool = true
    var body: some View {
        VStack {
            TabView {
                StatusPage()
                    .tabItem {
                        Label("Status", image: "Status")
                    }
             
                MessagesPage()
                    .tabItem {
                        Label("Messages", image: "Messages")
                        Text("Notes")
                    }
             
                CallsPage()
                    .tabItem {
                        Label("Calls", image: "Calls")
                    }
                SettingsPage()
                    .tabItem {
                        Label("Setting", image: "Settings")
                    }
             
                    
            }
        }.ignoresSafeArea()
        .navigationBarBackButtonHidden(true)
        
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
