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
            ZStack(alignment: .center) {
                Color.white
                VStack{
                    TopBarView(titleText: "Status", rightIcon: "SearchIcon")
                    StatusRow()
                }
            }.ignoresSafeArea()
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Hidden Title")
                .navigationBarHidden(self.navBarHidden)
                .onAppear {
                    self.navBarHidden = true
                }
                .navigationBarBackButtonHidden(true)
        }
    }
}

struct StatusPage_Previews: PreviewProvider {
    static var previews: some View {
       StatusPage()
    }
}

//MARK: - Status Row View


struct StatusRow: View {
    
    private var data = DataForStatusPage.data
    private var dataTwo = DataForStatusPage.dataTwo
    
    
    var body: some View {
        ZStack {
            Color.white
            List {
                Section {
                    ForEach(data, id: \.id) { result in
                        StatusCell(nameText: result.nameText, timeText: result.timeText)
                    }
                }
                header: {
                    CustomHeaderView(titleText: "Recent Updates")
                }
                    .listRowSeparator(.hidden)
                    
                Section {
                    ForEach(dataTwo, id: \.id) { result in
                        StatusCell(nameText: result.nameText, timeText: result.timeText)
                    }
                } header: {
                    CustomHeaderView(titleText: "Views Updates")
                }
                    .listRowSeparator(.hidden)
            }.listStyle(.plain)
                
            
        }.background {
            Color.white
        }
         
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
