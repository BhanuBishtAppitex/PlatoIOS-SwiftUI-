//
//  MessagesPag.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct MessagesPage: View {
    @State var isNavigationBarHidden: Bool = true
    @State var isLinkActivated: Bool = false
    let data = ModelForMessagesPage.data
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    Color.white
                    VStack(spacing: 0){
                        TopBarView(titleText: "Messages", rightIcon: "SearchIcon")
                        List {
                            ForEach(data, id: \.id) { result in
                                ZStack {
                                    NavigationLink(destination: ChatView(), isActive: $isLinkActivated) {
                                        EmptyView()
                                    }.opacity(0)
                                  
                                    MessagesCell(isSeen: result.isSeen, profileImage: result.profileImage, nameText: result.nameText, messageText: result.messsageText, timeText: result.timeText, notificationText: result.notificationText)
                                }
                            }
                        }.listStyle(.plain)
                        
                    }
                }
                .ignoresSafeArea()
                // .navigationBarBackButtonHidden(true)
                .navigationBarHidden(true)
            }
        }
    }
}

struct MessagesPagePreviews: PreviewProvider {
    static var previews: some View {
        MessagesPage()
    }
}
