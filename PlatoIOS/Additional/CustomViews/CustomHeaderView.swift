//
//  CustomHeaderView.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct CustomHeaderView: View {
    var titleText: String
    var body: some View {
        VStack {
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .frame(maxWidth: 164, alignment: .leading)
                    .frame(height: 40)
                    .foregroundColor(Color(C.Colors.accentBlur))
                    .overlay {
                        Text(titleText)
                            .font(.custom(C.Fonts.Poppins.medium, size: 17))
                            .foregroundColor(Color(C.Colors.accentColor))
                    }
                Spacer()
            }
            Spacer()
        }.frame(height: 40)
           
    }
}

struct CustomHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        CustomHeaderView(titleText: "Recent Calls")
    }
}
