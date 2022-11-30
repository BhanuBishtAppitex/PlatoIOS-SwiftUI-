//
//  StatusPage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 29/11/22.
//

import SwiftUI

struct StatusPage: View {
    @State var navBarHidden: Bool = true
    var body: some View {
        NavigationView {
            //MARK: - MainView
            VStack{
                TopBarView(titleText: "Status", rightIcon: "SearchIcon")
                StatusRow()
            }.ignoresSafeArea()
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Hidden Title")
                .navigationBarHidden(self.navBarHidden)
                .onAppear {
                    self.navBarHidden = true
                }
                
        }.navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct StatusPage_Previews: PreviewProvider {
    static var previews: some View {
        StatusPage()
    }
}


//MARK: - Status Row View

struct StatusRow: View {
    private var dataForRecentUpdates = DataForStatusPage.dataForRecentUpdates
    private var dataForViewedUpdates = DataForStatusPage.dataForViewedUpdates
    
    var body: some View {
        //MARK: - ListView
        List {
            //MARK: - Recent Updates
            Section(header: HStack {
                CustomHeaderView(titleText: "Recent Updates")
                Spacer()
            }.listRowInsets(EdgeInsets(top: 1, leading: 0, bottom: 1, trailing: 1))
                .background(Color.white)
                    , content: {
                ForEach(dataForRecentUpdates, id: \.id) { result in
                    StatusCell(nameText: result.nameText, timeText: result.timeText)
                }
            }).listRowSeparator(.hidden)
      
        
            //MARK: - View Updates
            Section(header: HStack {
                CustomHeaderView(titleText: "Viewed Updates")
                Spacer()
            }.listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .background(Color.white)
                    , content: {
                ForEach(dataForViewedUpdates, id: \.id) { result in
                    StatusCell(nameText: result.nameText, timeText: result.timeText)
                }
            }).listRowSeparator(.hidden)
            
        }.listStyle(.plain)
          
    }
}




//MARK: - Cell View
struct StatusCell: View {
    var profileImage: String = "ProfileImage"
    var nameText: String = "Luhan Danu"
    var timeText: String = "Today 10:18 PM"
    var body: some View {
        HStack(spacing: 8) {
            Image(profileImage)
            VStack(alignment: .leading) {
                Text(nameText)
                    .font(.custom(C.Fonts.Poppins.medium, size: 17))
                    .foregroundColor(Color(C.Colors.textPrimary))
                Text(timeText)
                    .font(.custom(C.Fonts.Poppins.regular, size: 14))
                    .foregroundColor(Color(C.Colors.textSecondary))
            }
            Spacer()
        }
    }
}
