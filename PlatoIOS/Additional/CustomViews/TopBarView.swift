//
//  TopBarView.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct TopBarView: View {
    var titleText: String
    var rightIcon: String = ""
    var body: some View {
        VStack {
            Rectangle()
                .frame(maxHeight: 113)
                .foregroundColor(Color(C.Colors.accentColor))
                .overlay {
                    HStack {
                        Text(titleText)
                            .font(.custom(C.Fonts.Poppins.semiBold, size: 30))
                            .foregroundColor(.white)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        Button {
                            print("button pressed")
                        } label: {
                            Image(rightIcon)
                                .resizable()
                                .frame(width: 24, height: 24, alignment: .center)
                        }

                    }.padding()
                        .padding(.top, 30)
                }
            Spacer()
        }.ignoresSafeArea()
        .frame(maxHeight: 113)
        .background(Color(C.Colors.accentColor))
    }
}

struct TopBarView_Previews: PreviewProvider {
    static var previews: some View {
        TopBarView(titleText: "Status")
    }
}
