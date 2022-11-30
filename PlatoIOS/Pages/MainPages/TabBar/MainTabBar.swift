//
//  MainTabBar.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct MainTabBar: View {
    //MARK: - view default values initialzer
    init() {
        UITableView.appearance().backgroundColor = .white
        UITableViewHeaderFooterView.appearance().tintColor = UIColor.clear
        UITabBar.appearance().backgroundColor = UIColor(named: C.Colors.accentBlur)
        UITabBar.appearance().barTintColor = UIColor(named: C.Colors.accentBlur)
        UITabBar.appearance().tintColor = .red
    }
    
    @State var isNavigationBarHidden: Bool = true
    var body: some View {
        //MARK: - Table View
        TabView {
            Group {
           
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
                
                ProfilePage()
                    .tabItem {
                        Label("Profile", image: "Profile")
                    }
            }
        }//.accentColor(.orange)
        
        
        
    }
}

struct MainTabBar_Previews: PreviewProvider {
    static var previews: some View {
        MainTabBar()
    }
}
