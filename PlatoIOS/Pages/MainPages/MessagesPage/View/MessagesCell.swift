//
//  MessagesRow.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct MessagesCell: View {
    var isSeen: MessageType.IsSeen
    var profileImage: String
    var nameText: String
    var messageText: String
    var timeText: String
    var notificationText: String
    
    var body: some View {
        HStack {
            Image(profileImage)
                .frame(maxWidth: 50, maxHeight: 50)
            VStack(alignment: .leading) {
                Text(nameText)
                    .font(.custom(C.Fonts.Poppins.medium, size: 17))
                    .foregroundColor(Color(C.Colors.textPrimary))
                
                Text(messageText)
                    .foregroundColor((isSeen == .No) ? Color(C.Colors.accentColor)  : Color(C.Colors.textPrimary))
                    .font(.custom(C.Fonts.Poppins.regular, size: 14))
            }
            Spacer()
            VStack(alignment: .trailing) {
                Text(timeText)
                    .font(.custom(C.Fonts.Poppins.regular, size: 12))
                    .foregroundColor((isSeen == .No) ? Color(C.Colors.accentColor)  : Color(C.Colors.textPrimary) )
                if isSeen == .No {
                    Circle()
                        .frame(width: 20, height: 20)
                        .foregroundColor(Color(C.Colors.accentColor))
                        .overlay(alignment: .center) {
                            Text(notificationText)
                                .foregroundColor(.white)
                                .font(.custom(C.Fonts.Poppins.semiBold, size: 12))
                        }
                }
                
            }
        }.frame(height: 70)
    }
}

struct MessagesCellPreviews: PreviewProvider {
    static var previews: some View {
        MessagesCell(isSeen: .Yes, profileImage: "ProfileImage", nameText: "Ariana Gray", messageText: "How a re you?", timeText: "4:42 PM", notificationText: "2")
    }
}
