//
//  SettingsPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct SettingsPage: View {
    
    let data = ModelForSettingsPage.data
    @State var isLinkActivated: Bool = false
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                VStack(spacing: 0) {
                    TopBarView(titleText: "Settings")
                    List {
                        ForEach(data, id: \.id) { result in
                            
                            SettingPageRow(imageText: result.iconImage, mainTitle: result.mainTitle)
                            
                        }
                    }.listStyle(.plain)
                }
            }.ignoresSafeArea()
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}




