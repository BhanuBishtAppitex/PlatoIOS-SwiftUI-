//
//  ProfileImage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct ProfilePage: View {
    let data = DataForProfilePage.data
    @State var navBarHidden: Bool = true
    @State var isLinkActivated: Bool = false
    var body: some View {
        
        NavigationView {
            //MARK: - main view
            VStack(spacing: 0) {
                TopBarView(titleText: "Profile")
                //MARK: - top view
                RoundedRectangle(cornerRadius: 10)
                    .frame(height: UIScreen.main.bounds.height/3.5)
                    .foregroundColor(.clear)
                    .overlay {
                        VStack(alignment: .center) {
                            Image("ProfileImage")
                                .resizable()
                                .frame(width: UIScreen.main.bounds.width/4.0, height: UIScreen.main.bounds.width/4.0, alignment: .center)
                            HStack {
                                Text("Jordan Smith")
                                Image("EditIcon")
                            }
                            Text("Available")
                        }
                    }.background(Color(C.Colors.accentBlur))
                
                //MARK: - list
                List {
                    ForEach(data, id: \.id) { result in
                        ZStack {
                            NavigationLink(destination: SettingsPage(), isActive: $isLinkActivated) {
                                EmptyView()
                            }.opacity(0)
                            SettingPageRow(imageText: result.iconImage, mainTitle: result.mainTitle)
                        }
                    }
                }.listStyle(.plain)
                
                Spacer()
            }.ignoresSafeArea()
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarTitle("Hidden Title")
                .navigationBarHidden(self.navBarHidden)
                .onAppear {
                    self.navBarHidden = true
                }
            
        }.navigationBarHidden(true)
        
    }
}

struct ProfilePagePreviews: PreviewProvider {
    static var previews: some View {
        ProfilePage()
    }
}
