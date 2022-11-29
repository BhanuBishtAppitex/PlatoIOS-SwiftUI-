//
//  AddCoverImagePage.swift
//  PlatoIOS
//
//  Created by wOOx Technology on 28/11/22.
//

import SwiftUI

struct AddCoverImagePage: View {
    @State var profileName: String = ""
    @State var bioText: String = ""
    @State var isLinkActivated: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.white
                VStack {
                    ZStack(alignment: .center) {
                     Rectangle()
                            .frame(maxHeight: 131)
                            .foregroundColor(Color(C.Colors.accentBlur))
                    Text("Add Cover Image")
                            .font(.custom(C.Fonts.Poppins.semiBold, size: 20))
                            .foregroundColor(Color(C.Colors.textSecondary))
                    }.padding(.bottom, 45)
                        .overlay(alignment: .bottom) {
                            Image("AddProfile")
                                .frame(maxWidth: 110, maxHeight: 90)
                        }
                    VStack(alignment: .leading ){
                        VStack{
                            TextField("Profile Name", text: $profileName)
                                 .padding()
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(maxHeight: 1)
                        }
                        VStack{
                            TextField("Bio", text: $bioText)
                                 .padding()
                            Rectangle()
                                .foregroundColor(.gray)
                                .frame(maxHeight: 1)
                        }
                        
                        Text("Create username  between 3-20 characters, letters & numbers only. No spaces.")
                            .foregroundColor(Color(C.Colors.textSecondary))
                            .font(.custom(C.Fonts.Poppins.regular, size: 14))
                        
                        
                    }.padding(.top, 40)
                        .padding()
                    
                    NavigationLink(destination: MainTabBar(), isActive: $isLinkActivated) {
                        Button {
                            print("done button pressed")
                            self.isLinkActivated = true
                        } label: {
                            
                            RoundedRectangle(cornerRadius: 10, style: .continuous)
                                .frame(maxHeight: 49)
                                .overlay {
                                    Text("Done")
                                        .foregroundColor(.white)
                                        .font(.custom(C.Fonts.Poppins.semiBold, size: 17))
                                }
                        }.padding()
                    }

                   
                    Spacer()
                    
                }
            }.ignoresSafeArea()
                
        }.navigationBarBackButtonHidden(true)
            .navigationBarHidden(true)
    }
}

struct AddCoverImagePage_Previews: PreviewProvider {
    static var previews: some View {
        AddCoverImagePage()
    }
}
