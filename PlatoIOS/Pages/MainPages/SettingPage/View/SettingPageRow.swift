//
//  SettingPageRow.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct SettingPageRow: View {
    
    var data: SettingsPageData
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

struct SettingPageRow_Previews: PreviewProvider {
    static var previews: some View {
        SettingPageRow(data: ModelForSettingsPage.data[0])
    }
}
