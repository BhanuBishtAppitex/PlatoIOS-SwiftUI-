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
                        Rectangle()
                            .frame(maxHeight: 113)
                            .foregroundColor(Color(C.Colors.accentColor))
                            .overlay(alignment: .bottom) {
                                HStack{
                                    Text("Messages")
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
                                    NavigationLink(destination: ChatView(), isActive: $isLinkActivated) {
                                        MessagesRow(data: MessagesPageData(nameText: result.nameText, messsageText: result.messsageText, timeText: result.timeText, notificationText: result.notificationText))
                                    }
                                  
                                  
                                }
                                
                                .listRowSeparatorTint(.gray)
                            }
                        }
                    }
                }
            }
            .ignoresSafeArea()
            .navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
        }
    }
}

struct MessagesPagePreviews: PreviewProvider {
    static var previews: some View {
        MessagesPage()
    }
}
