//
//  MessagesRow.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct MessagesRow: View {
    
    var data: MessagesPageData
   
    var body: some View {
        HStack {
            Image(MessagesPageData.profileImage)
                .frame(maxWidth: 50, maxHeight: 50)
            VStack(alignment: .leading) {
                Text(data.nameText)
                    .font(.custom(C.Fonts.Poppins.medium, size: 17))
                    .foregroundColor(Color(C.Colors.textPrimary))
                
                Text(data.messsageText)
                    .foregroundColor(Color(C.Colors.accentColor))
                    .font(.custom(C.Fonts.Poppins.regular, size: 14))
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(data.timeText)
                    .font(.custom(C.Fonts.Poppins.regular, size: 12))
                    .foregroundColor(Color(C.Colors.textSecondary))
                Circle()
                    .frame(width: 20, height: 20)
                    .foregroundColor(Color(C.Colors.accentColor))
                    .overlay(alignment: .center) {
                        Text("\(data.notificationText)")
                            .foregroundColor(.white)
                            .font(.custom(C.Fonts.Poppins.semiBold, size: 12))
                    }
            }
        }.frame(height: 70)
    }
}

struct MessagesRowPreviews: PreviewProvider {
    static var previews: some View {
        MessagesRow(data: ModelForMessagesPage.data[0])
    }
}
