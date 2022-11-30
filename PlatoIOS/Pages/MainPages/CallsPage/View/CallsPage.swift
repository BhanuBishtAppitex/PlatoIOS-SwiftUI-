//
//  CallsPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct CallsPage: View {
    let data = DataForCallsPage.data
    var body: some View {
        //MARK: - MainView
        ZStack{
            VStack(spacing: 10) {
                TopBarView(titleText: "Calls")
                //MARK: - List View
                List {
                    Section(header: HStack {
                        CustomHeaderView(titleText: "Recent Calls")
                        Spacer()
                    }.listRowInsets(EdgeInsets(top: 1, leading: 0, bottom: 1, trailing: 1))
                        .background(Color.white)
                            , content: {
                        ForEach(data, id: \.id) { result in
                            StatusCell(nameText: result.nameText, timeText: result.timeText)
                        }
                    }).listRowSeparator(.hidden)
                }.listStyle(.plain)
            }
            VStack {
                Spacer()
                Image("DialIcon")
                    .resizable()
                    .frame(width: 60, height: 60)
            }.frame(maxWidth: .infinity, alignment: .bottomTrailing)
                .padding(20)
        }.ignoresSafeArea()
            .padding(.bottom, 40)
    }
}

struct CallsPage_Previews: PreviewProvider {
    static var previews: some View {
        CallsPage()
    }
}

//MARK: - List view
struct CellForCallsPage: View {
    var profileImage: String = "ProfileImage"
    var nameText: String
    var callIcon: String
    var timeText: String
    var mainCallIcon: String
    var body: some View {
        //MARK: - mainView
        HStack {
            // profile image
            Image(profileImage)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            // text details
            VStack(alignment: .leading, spacing: 5) {
                Text(nameText)
                    .font(.custom(C.Fonts.Poppins.medium, size: 17))
                    .foregroundColor(Color(C.Colors.textPrimary))
                HStack(spacing: 10) {
                    Image(callIcon)
                    Text(timeText)
                        .font(.custom(C.Fonts.Poppins.regular, size: 14))
                        .foregroundColor(Color(C.Colors.textSecondary))
                }
            }
            Spacer()
            // right view icon
            Image(mainCallIcon)
                .tint(.blue)
        }.frame(height: 66)
    }
}





