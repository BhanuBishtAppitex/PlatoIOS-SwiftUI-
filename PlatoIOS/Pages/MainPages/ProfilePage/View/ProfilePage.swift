//
//  ProfileImage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct ProfilePage: View {
    let data = ModelForSettingsPage.data
    var body: some View {
        
        VStack(spacing: 0) {
            TopBarView(titleText: "Profile")
            ZStack(alignment: .center) {
                Color(C.Colors.accentBlur)
                RoundedRectangle(cornerRadius: 10)
                    .frame(maxHeight: 218)
                    .foregroundColor(.clear)
                    .overlay {
                        VStack(alignment: .center) {
                            Image("ProfileImage")
                                .resizable()
                                .frame(width: 143, height: 143, alignment: .center)
                            HStack {
                                Text("Jordan Smith")
                                Image("EditIcon")
                            }
                            Text("Available")
                        }
                    }
            } .frame(maxHeight: 218)
            List {
                ForEach(data, id: \.id) { result in
                    SettingPageRow(imageText: result.iconImage, mainTitle: result.mainTitle)
                }
            }.listStyle(.plain)

            Spacer()
        }.ignoresSafeArea()
    }
}

struct ProfilePagePreviews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
