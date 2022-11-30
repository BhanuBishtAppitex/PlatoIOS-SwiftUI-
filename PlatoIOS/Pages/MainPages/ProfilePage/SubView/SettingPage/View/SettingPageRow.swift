//
//  SettingPageRow.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct SettingPageRow: View {
    var imageText: String
    var mainTitle: String
    var body: some View {
        HStack(spacing: 20) {
            Image(imageText)
                .frame(maxWidth: 26, maxHeight: 26)
            Text(mainTitle)
                .font(.custom(C.Fonts.Poppins.regular, size: 17))
                .foregroundColor(Color(C.Colors.textSecondary ))
            Spacer()
        }.frame( height: 56)
    }
}

struct SettingPageRow_Previews: PreviewProvider {
    static var previews: some View {
       SettingPageRow( imageText: "SettingsPageIcon-1", mainTitle: "Chat Settings")
    }
}
