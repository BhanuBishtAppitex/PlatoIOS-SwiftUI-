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
        ZStack {
            Color.white
            VStack(spacing: 0) {
                Rectangle()
                    .frame(maxHeight: 113)
                    .foregroundColor(Color(C.Colors.accentColor))
                    .overlay(alignment: .bottom) {
                        HStack{
                            Text("Settings")
                                .foregroundColor(.white)
                                .padding(.horizontal, 20)
                                .font(.custom(C.Fonts.Poppins.semiBold, size: 30))
                                .padding(.vertical,20)
                            Spacer()
                            Image("SearchIcon")
                                .padding(.horizontal, 20)
                        }
                    }
                List {
                    ForEach(data, id: \.id) { result in
                        ZStack {
                            NavigationLink(destination: ProfilePage(), isActive: $isLinkActivated) {
                                SettingPageRow(data: SettingsPageData(iconImage: result.iconImage, mainTitle: result.mainTitle))
                            }
                        }
                    }
                    }
            }
            
        }.ignoresSafeArea()
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}




