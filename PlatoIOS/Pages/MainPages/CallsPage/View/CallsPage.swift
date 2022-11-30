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
        
        VStack(spacing: 10) {
            TopBarView(titleText: "Calls")
            
            CustomHeaderView(titleText: "Recent Calls")
                .padding(.top, 10)
            
            List {
                Section {
                    ForEach(data) { result in
                        CellForCallsPage(nameText: result.nameText, callIcon: result.callIcon, timeText: result.timeText, mainCallIcon: result.mainCallIcon)
                    }
                }
            }.listStyle(.plain)
        }.ignoresSafeArea()
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
        HStack {
            Image(profileImage)
                .resizable()
                .frame(width: 50, height: 50, alignment: .center)
            VStack(alignment: .leading) {
                Text(nameText)
                HStack {
                    Image(callIcon)
                    Text(timeText)
                }
            }
            Spacer()
            Image(mainCallIcon)
                .tint(.blue)
        }.frame(height: 66)
    }
}




