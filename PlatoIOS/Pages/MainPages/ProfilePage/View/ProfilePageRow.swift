//
//  ProfilePageRow.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct ProfilePageRow: View {
    var data: profilePageData
    var body: some View {
        HStack(spacing: 20) {
            Image(data.iconImage)
                .frame(maxWidth: 26, maxHeight: 26)
            Text(data.mainTitle)
                .font(.custom(C.Fonts.Poppins.regular, size: 17))
                .foregroundColor(Color(C.Colors.textSecondary ))
            Spacer()
        }.frame( height: 56)
    }
}

struct ProfilePageRowPreviews: PreviewProvider {
    static var previews: some View {
        SettingPageRow(data: ModelForProfilePage.data[0])
    }
}
